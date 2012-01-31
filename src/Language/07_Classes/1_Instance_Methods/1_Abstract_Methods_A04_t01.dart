/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion Unless explicitly stated otherwise, all ordinary rules that apply to methods
 * apply to abstract methods.
 * 7.1: It is a compile-time error if an instance method m1 overrides an instance
 * member m2 and m1 does not declare all the named parameters declared by m2 in the same order.
 * @description Checks that a compile-time error is produced when the overriding abstract method
 * has fewer named parameters than the instance method being overridden (2 vs 3) and neither 
 * have any required parameters.
 * @compile-error
 * @author rodionov
 */

class A {
  f([var x, var y, var z]) {}
}

class C extends A {
  abstract f([var x, var y]);
}

main() {
  try {
    new A().f(1, 2, 3);
    new C().f(1, 2);
  } catch(var x) {}
}