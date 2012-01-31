/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion It is possible to return the result of a void method from
 * within a void method. One can also return null; or a value of type Dynamic.
 * Returning any other result will cause a type warning (or a dynamic type error
 * in checked mode).
 * @description Checks that returning a value that is not null or has type Dynamic
 * from within a void method causes a static type warning (the value is Object).
 * @author rodionov
 * @reviewer iefremov
 * @static-warning
 * @needsreview Assertion of this test cites non-normative text.
 * Possibly, this text in the spec should be normative?
 * @needsreview Do we need to check the dynamic-type-error as well? The spec is unclear.
 */

void foo() {
  Object o = new Object();
  return o;
}

main() {
  foo();
}
