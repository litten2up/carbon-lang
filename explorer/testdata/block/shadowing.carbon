// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// RUN: %{explorer} %s | %{FileCheck-strict} %s
// RUN: %{explorer-trace} %s | %{FileCheck-allow-unmatched} %s
// AUTOUPDATE: %{explorer} %s
// CHECK:STDOUT: result: 0

package ExplorerTest api;

fn Main() -> i32 {
  var x: i32 = 0;
  if (true) {
    // TODO: If we disallow declaring shadowed names, we should reject this.
    var x: i32 = 1;
  }
  return x;
}
