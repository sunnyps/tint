// Copyright 2021 The Tint Authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "src/transform/binding_remapper.h"

#include <string>
#include <unordered_set>
#include <utility>

#include "src/ast/disable_validation_decoration.h"
#include "src/program_builder.h"
#include "src/sem/function.h"
#include "src/sem/variable.h"

TINT_INSTANTIATE_TYPEINFO(tint::transform::BindingRemapper);
TINT_INSTANTIATE_TYPEINFO(tint::transform::BindingRemapper::Remappings);

namespace tint {
namespace transform {

BindingRemapper::Remappings::Remappings(BindingPoints bp,
                                        AccessControls ac,
                                        bool may_collide)
    : binding_points(std::move(bp)),
      access_controls(std::move(ac)),
      allow_collisions(may_collide) {}

BindingRemapper::Remappings::Remappings(const Remappings&) = default;
BindingRemapper::Remappings::~Remappings() = default;

BindingRemapper::BindingRemapper() = default;
BindingRemapper::~BindingRemapper() = default;

void BindingRemapper::Run(CloneContext& ctx, const DataMap& inputs, DataMap&) {
  auto* remappings = inputs.Get<Remappings>();
  if (!remappings) {
    ctx.dst->Diagnostics().add_error(
        diag::System::Transform,
        "missing transform data for " + std::string(TypeInfo().name));
    return;
  }

  // A set of post-remapped binding points that need to be decorated with a
  // DisableValidationDecoration to disable binding-point-collision validation
  std::unordered_set<sem::BindingPoint> add_collision_deco;

  if (remappings->allow_collisions) {
    // Scan for binding point collisions generated by this transform.
    // Populate all collisions in the `add_collision_deco` set.
    for (auto* func_ast : ctx.src->AST().Functions()) {
      if (!func_ast->IsEntryPoint()) {
        continue;
      }
      auto* func = ctx.src->Sem().Get(func_ast);
      std::unordered_map<sem::BindingPoint, int> binding_point_counts;
      for (auto* var : func->ReferencedModuleVariables()) {
        if (auto binding_point = var->Declaration()->binding_point()) {
          BindingPoint from{binding_point.group->value(),
                            binding_point.binding->value()};
          auto bp_it = remappings->binding_points.find(from);
          if (bp_it != remappings->binding_points.end()) {
            // Remapped
            BindingPoint to = bp_it->second;
            if (binding_point_counts[to]++) {
              add_collision_deco.emplace(to);
            }
          } else {
            // No remapping
            if (binding_point_counts[from]++) {
              add_collision_deco.emplace(from);
            }
          }
        }
      }
    }
  }

  for (auto* var : ctx.src->AST().GlobalVariables()) {
    if (auto binding_point = var->binding_point()) {
      // The original binding point
      BindingPoint from{binding_point.group->value(),
                        binding_point.binding->value()};

      // The binding point after remapping
      BindingPoint bp = from;

      // Replace any group or binding decorations.
      // Note: This has to be performed *before* remapping access controls, as
      // `ctx.Clone(var->decorations())` depend on these replacements.
      auto bp_it = remappings->binding_points.find(from);
      if (bp_it != remappings->binding_points.end()) {
        BindingPoint to = bp_it->second;
        auto* new_group = ctx.dst->create<ast::GroupDecoration>(to.group);
        auto* new_binding = ctx.dst->create<ast::BindingDecoration>(to.binding);

        ctx.Replace(binding_point.group, new_group);
        ctx.Replace(binding_point.binding, new_binding);
        bp = to;
      }

      // Replace any access controls.
      auto ac_it = remappings->access_controls.find(from);
      if (ac_it != remappings->access_controls.end()) {
        ast::Access ac = ac_it->second;
        auto* sem = ctx.src->Sem().Get(var);
        if (sem->StorageClass() != ast::StorageClass::kStorage) {
          ctx.dst->Diagnostics().add_error(
              diag::System::Transform,
              "cannot apply access control to variable with storage class " +
                  std::string(ast::str(sem->StorageClass())));
          return;
        }
        auto* ty = sem->Type()->UnwrapRef();
        ast::Type* inner_ty = CreateASTTypeFor(ctx, ty);
        auto* new_var = ctx.dst->create<ast::Variable>(
            ctx.Clone(var->source()), ctx.Clone(var->symbol()),
            var->declared_storage_class(), ac, inner_ty, var->is_const(),
            ctx.Clone(var->constructor()), ctx.Clone(var->decorations()));
        ctx.Replace(var, new_var);
      }

      // Add `DisableValidationDecoration`s if required
      if (add_collision_deco.count(bp)) {
        auto* decoration =
            ctx.dst->ASTNodes().Create<ast::DisableValidationDecoration>(
                ctx.dst->ID(), ast::DisabledValidation::kBindingPointCollision);
        ctx.InsertBefore(var->decorations(), *var->decorations().begin(),
                         decoration);
      }
    }
  }

  ctx.Clone();
}

}  // namespace transform
}  // namespace tint
