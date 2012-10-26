/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion It is a static warning if q is a constructor of an abstract class and
 * q is not a factory constructor.
 * @description Checks that declaring a non-factory constructor in an abstract class
 * produces a static warning.
 * @static-warning
 * @author kaigorodov
 */

abstract class C {
  C(){}
}

main() {
  try {
    new C();
  } catch (e) {}
}