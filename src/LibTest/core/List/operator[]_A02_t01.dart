/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion Throws an out of bounds exception if [index] is out of bounds.
 * @description Checks that the exception is thrown.
 * @author iefremov
 * @author varlax
 * @reviewer msyabro
 * @reviewer varlax
 */

void check(List a, int idx) {
  try {
    a[idx];
    Expect.fail("expected IndexOutOfRangeException");
  } catch(IndexOutOfRangeException ok) {}
}

main() {
  check([], 0);
  check([], 1);
  check([], -1);
  check(const[], 6031769);
  check(const [1], 2);
  check(const [null,null,null,null], 5);
  check(const [null,null,null,null], -1);

  var ls = new List(123); 
  check(ls, 124);
  check(ls, -1);

  check(new List(), 0);
  check(new List(), 1);
  check(new List(), -1);
  check(new List.from([]), 6031769);
  check(new List.from([1]), 2);
  check(new List.from([null,null,null,null]), 5);
  check(new List.from([null,null,null,null]), -1);

}
