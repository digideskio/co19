/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion The value of a constant map literal  const <V>{k1:e1... kn :en} is an object m
 * that implements the built-in interface Map<String, V>. The entries of m are ui:vi, 1 <= i <= n,
 * where ui is the value of the compile time expression ki and vi is the value of the compile
 * time expression ei.  The value of a constant map literal  const {k1:e1... kn :en} is defined as the
 * value of a constant map literal const <Dynamic>{k1:e1... kn :en}.
 * @description Checks that the value of a constant map literal const <V> {k1:e1... kn :en}
 * is an object that implements interface Map<String, V>.
 * @author msyabro
 * @reviewer kaigorodov
 */

class S {
  const S();
}

main() {
  Expect.isTrue(const <int> {"": 1} is Map<String, int>);
  Expect.isTrue(const <String> {"": "string"} is Map<String, String>);
  Expect.isTrue(const <bool> {"": true} is Map<String, bool>);
  Expect.isTrue(const <S>{"": const S()} is Map<String, S>);
}