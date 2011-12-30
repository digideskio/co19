/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion There is no restriction on the value of [start]. 
 * If it is negative, it has the same effect as if it were zero: -1 is returned.
 * If it is greater than the [:length:] of this list, it has the same effect 
 * as if it were equal to the [:length:]: this entire list may be searched.
 * @description Checks that [startIndex] can be out of bounds
 * @author iefremov
 * @author varlax
 * @reviewer msyabro
 * @reviewer varlax
 */

checkList(List list, var elem, int idx, int expected) {
  Expect.equals(expected, list.lastIndexOf(elem, idx));
}

check(List a) {
  checkList(a, 42, -1, -1);
  checkList(a, 777, -1, -1);
  checkList(a, null, -1, -1);
  checkList(a, 0, -1, -1);

  checkList(a, 42, 7, 3);
  checkList(a, 777, 7, -1);
  checkList(a, null, 7, -1);
  checkList(a, 0, 7, 6);

  checkList(a, 42, 6031769, 3);
  checkList(a, 777, 6031769, -1);
  checkList(a, null, 6031769, -1);
  checkList(a, 0, 6031769, 6);

  checkList(a, 42, -6031769, -1);
  checkList(a, 777, -6031769, -1);
  checkList(a, null, -6031769, -1);
  checkList(a, 0, -6031769, -1);
}

main() {
  check([42, 0, -1, 42, -1, 6031769, 0]);
  check(const [42, 0, -1, 42, -1, 6031769, 0]);
  check(new List.from([42, 0, -1, 42, -1, 6031769, 0]));
  List b = new List(7);
  b.setRange(0,7,[42, 0, -1, 42, -1, 6031769, 0]);
  check(b);
}