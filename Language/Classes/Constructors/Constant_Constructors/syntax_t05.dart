/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion
 * constantConstructorSignature:
 *   const qualified formalParameterList
 * ;
 * @description Checks that it is a compile-time error when a constant default
 * constructor is declared as abstract.
 * @compile-error
 * @author rodionov
 * @reviewer kaigorodov
 */

class C {
  const abstract C();
}

main() {
  new C();}
