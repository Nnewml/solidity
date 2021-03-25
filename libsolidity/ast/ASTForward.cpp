/*
	This file is part of solidity.

	solidity is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	solidity is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with solidity.  If not, see <http://www.gnu.org/licenses/>.
*/
// SPDX-License-Identifier: GPL-3.0
/**
 * @author Christian <c@ethdev.com>
 * @date 2014
 * Forward-declarations of AST classes.
 */

#include <libsolidity/ast/ASTForward.h>
#include <libsolidity/ast/AST.h>

using namespace solidity;
using namespace solidity::frontend;
/*
bool ASTCompareByID::operator()(ASTNode const* _lhs, ASTNode const* _rhs) const
{
	return _lhs->id() < _rhs->id();
}
bool ASTCompareByID::operator()(ASTNode const* _lhs, int64_t _rhs) const
{
	return _lhs->id() < _rhs;
}
bool ASTCompareByID::operator()(int64_t _lhs, ASTNode const* _rhs) const
{
	return _lhs < _rhs->id();
}
*/
