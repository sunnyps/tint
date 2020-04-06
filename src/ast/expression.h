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

#ifndef SRC_AST_EXPRESSION_H_
#define SRC_AST_EXPRESSION_H_

#include "src/ast/node.h"
#include "src/ast/type/type.h"

namespace tint {
namespace ast {

class ArrayAccessorExpression;
class AsExpression;
class CallExpression;
class CastExpression;
class IdentifierExpression;
class ConstructorExpression;
class MemberAccessorExpression;
class RelationalExpression;
class UnaryDerivativeExpression;
class UnaryMethodExpression;
class UnaryOpExpression;

/// Base expression class
class Expression : public Node {
 public:
  ~Expression() override;

  /// Sets the resulting type of this expression
  /// @param type the result type to set
  void set_result_type(type::Type* type) { result_type_ = type; }
  /// @returns the resulting type from this expression
  type::Type* result_type() const { return result_type_; }

  /// @returns true if this is an array accessor expression
  virtual bool IsArrayAccessor() const { return false; }
  /// @returns true if this is an as expression
  virtual bool IsAs() const { return false; }
  /// @returns true if this is a call expression
  virtual bool IsCall() const { return false; }
  /// @returns true if this is a cast expression
  virtual bool IsCast() const { return false; }
  /// @returns true if this is an identifier expression
  virtual bool IsIdentifier() const { return false; }
  /// @returns true if this is an constructor expression
  virtual bool IsConstructor() const { return false; }
  /// @returns true if this is a member accessor expression
  virtual bool IsMemberAccessor() const { return false; }
  /// @returns true if this is a relational expression
  virtual bool IsRelational() const { return false; }
  /// @returns true if this is a unary derivative expression
  virtual bool IsUnaryDerivative() const { return false; }
  /// @returns true if this is a unary method expression
  virtual bool IsUnaryMethod() const { return false; }
  /// @returns true if this is a unary op expression
  virtual bool IsUnaryOp() const { return false; }

  /// @returns the expression as an array accessor
  ArrayAccessorExpression* AsArrayAccessor();
  /// @returns the expression as an as
  AsExpression* AsAs();
  /// @returns the expression as a call
  CallExpression* AsCall();
  /// @returns the expression as a cast
  CastExpression* AsCast();
  /// @returns the expression as an identifier
  IdentifierExpression* AsIdentifier();
  /// @returns the expression as an constructor
  ConstructorExpression* AsConstructor();
  /// @returns the expression as a member accessor
  MemberAccessorExpression* AsMemberAccessor();
  /// @returns the expression as a relational expression
  RelationalExpression* AsRelational();
  /// @returns the expression as a unary derivative expression
  UnaryDerivativeExpression* AsUnaryDerivative();
  /// @returns the expression as a unary method expression
  UnaryMethodExpression* AsUnaryMethod();
  /// @returns the expression as a unary op expression
  UnaryOpExpression* AsUnaryOp();

 protected:
  /// Constructor
  Expression();
  /// Constructor
  /// @param source the source of the expression
  explicit Expression(const Source& source);
  /// Move constructor
  Expression(Expression&&) = default;

 private:
  Expression(const Expression&) = delete;

  type::Type* result_type_ = nullptr;
};

}  // namespace ast
}  // namespace tint

#endif  // SRC_AST_EXPRESSION_H_
