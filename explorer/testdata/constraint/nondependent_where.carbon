// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// RUN: %{explorer} %s | %{FileCheck-strict} %s
// RUN: %{explorer-trace} %s | %{FileCheck-allow-unmatched} %s
// AUTOUPDATE: %{explorer} %s
// CHECK:STDOUT: result: 1

package ExplorerTest api;

interface A { fn Get() -> Self; }
impl i32 as A { fn Get() -> Self { return 1; } }

alias AlsoA = A where i32 is A and 4 == 4;

fn F[T:! AlsoA](x: T) -> T { return T.Get(); }

fn Main() -> i32 {
  var z: i32 = 0;
  return F(z);
}
