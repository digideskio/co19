/*
 * Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion Iterable<E> skip(int count)
 * If [this] has fewer than [n] elements, then the resulting [Iterable] will be empty.
 * @description Checks that the returned [Iterable] is empty if [this] has
 * fewer than [n] elements.
 * @author msyabro
 */

import "dart:typed_data";
import "../../../Utils/expect.dart";

check(list, n) {
  var l = new Uint8ClampedList.fromList(list);
  var res = l.skip(n);
  Expect.isTrue(res.isEmpty);
}

main() {
  check([],1);
  check([1, 2], 3);
  check([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 100);
}

