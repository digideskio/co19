/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion It is a static warning if a class C declares an instance setter
 * named v= and an accessible static member named v= or v is declared in a
 * superclass of C.
 * @description Checks that a static warning is arisen if a class has an
 * explicitly declared instance setter and a static getter with the same name
 * declared in a superclass.
 * @static-warning
 * @author ngl@unipro.ru
 */

class A {
  static int n;
  static get v { return n; }
}

class C extends A {
  set v(int v1) { A.n = v1; }  /// static type warning
}

main() {
  new C().v = 5;
}
