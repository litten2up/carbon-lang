// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// RUN: %{not} %{explorer} %s | %{FileCheck-strict} %s
// RUN: %{not} %{explorer-trace} %s | %{FileCheck-allow-unmatched} %s
// AUTOUPDATE: %{explorer} %s

package ExplorerTest api;

// Error: Can't use keyword `Self` as the name of a global.
// CHECK:STDERR: SYNTAX ERROR: {{.*}}/explorer/testdata/let/fail_global_named_self.carbon:[[@LINE+1]]: syntax error, unexpected SELF, expecting identifier
let Self: i32 = 10;

fn Main() -> i32 {
  return 0;
}
