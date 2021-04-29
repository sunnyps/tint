// Copyright 2020 The Tint Authors.
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

#include "src/sem/array_type.h"

#include <cmath>

#include "src/program_builder.h"

TINT_INSTANTIATE_TYPEINFO(tint::sem::ArrayType);

namespace tint {
namespace sem {

ArrayType::ArrayType(Type* subtype,
                     uint32_t size,
                     ast::DecorationList decorations)
    : subtype_(subtype), size_(size), decos_(decorations) {}

ArrayType::ArrayType(ArrayType&&) = default;

ArrayType::~ArrayType() = default;

std::string ArrayType::type_name() const {
  TINT_ASSERT(subtype_);

  std::string type_name = "__array" + subtype_->type_name();
  if (!IsRuntimeArray()) {
    type_name += "_" + std::to_string(size_);
  }
  for (auto* deco : decos_) {
    if (auto* stride = deco->As<ast::StrideDecoration>()) {
      type_name += "_stride_" + std::to_string(stride->stride());
    }
  }

  return type_name;
}

std::string ArrayType::FriendlyName(const SymbolTable& symbols) const {
  std::ostringstream out;
  for (auto* deco : decos_) {
    if (auto* stride = deco->As<ast::StrideDecoration>()) {
      out << "[[stride(" << stride->stride() << ")]] ";
    }
  }
  out << "array<" << subtype_->FriendlyName(symbols);
  if (!IsRuntimeArray()) {
    out << ", " << size_;
  }
  out << ">";
  return out.str();
}

ArrayType* ArrayType::Clone(CloneContext* ctx) const {
  // Clone arguments outside of create() call to have deterministic ordering
  auto* ty = ctx->Clone(type());
  auto decos = ctx->Clone(decorations());
  return ctx->dst->create<ArrayType>(ty, size_, decos);
}

}  // namespace sem
}  // namespace tint