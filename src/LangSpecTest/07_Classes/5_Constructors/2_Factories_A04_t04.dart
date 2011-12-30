/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion The return type of a factory whose signature is of the
 * form "factory M<T1 extends B1,...,Tn extends Bn>" or the form
 * "factory M<T1 extends B1,...,Tn extends Bn>.id" is M<T1,...,Tn>.
 * @description Checks that assigning the result of invoking a factory constructor
 * to a variable whose type is not assignable to M<T1,...,Tn> produces a static warning.
 * Factory constructor name is that of an interface that specifies the constructor's enclosing
 * class as its default implementation.
 * @static-type-error
 * @author rodionov
 */

class S1 {}
class S2 extends S1 {}
class S3 extends S2 {}

interface I<T, U, V> default M<T, U, V> {
  I();
}

class M<T, U, V> {
  factory I() {}
}

main() {
  I<S3, int, int> m1 = new I<S2, num, Function>();
}