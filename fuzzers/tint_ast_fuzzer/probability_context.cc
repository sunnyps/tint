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

#include "fuzzers/tint_ast_fuzzer/probability_context.h"

#include <cassert>

namespace tint {
namespace fuzzers {
namespace ast_fuzzer {
namespace {

const std::pair<uint32_t, uint32_t> kChanceOfReplacingIdentifiers = {30, 70};

}  // namespace

ProbabilityContext::ProbabilityContext(RandomGenerator* generator)
    : generator_(generator),
      chance_of_replacing_identifiers_(
          RandomFromRange(kChanceOfReplacingIdentifiers)) {
  assert(generator != nullptr && "generator must not be nullptr");
}

uint32_t ProbabilityContext::RandomFromRange(
    std::pair<uint32_t, uint32_t> range) {
  assert(range.first <= range.second && "Range must be non-decreasing");
  return generator_->GetUInt32(
      range.first, range.second + 1);  // + 1 need since range is inclusive.
}

}  // namespace ast_fuzzer
}  // namespace fuzzers
}  // namespace tint
