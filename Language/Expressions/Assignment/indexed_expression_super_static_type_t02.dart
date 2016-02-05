/*
 * Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion The static type of the expression super[e1] = e2 is the static
 * type of e2.
 * @description Checks that static type of super[e1] = e2  is static type of e2
 * @static-warning
 * @author sgrekhov@unipro.ru
 */

class A {
  operator []=(index, value) {}
}

class C extends A {
  test() {
    try {
      int i = (super[100] = 3.14);  /// static type warning
    } catch (e) {
    }
  }
}
main() {
  C c = new C();
  c.test();
}
