// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// RUN: %{explorer} %s | %{FileCheck-strict} %s
// RUN: %{explorer-trace} %s | %{FileCheck-allow-unmatched} %s
// AUTOUPDATE: %{explorer} %s
// CHECK:STDOUT: result: 0

package ExplorerTest api;

fn add1(x: i32) -> i32 {
  return x + 1;
}

fn Main() -> i32 {
  var f: __Fn(i32)->i32 = add1;
  return f(-1);
}
