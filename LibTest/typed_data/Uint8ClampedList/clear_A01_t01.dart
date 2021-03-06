/*
 * Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion void clear()
 * Removes all elements in the list.
 * The length of the list becomes zero.
 * Throws an [UnsupportedError], and retains all elements,
 * if the length of the list cannot be changed.
 * since [Uint8ClampedList] is a fixed-size list.
 * @author msyabro
 */
import "dart:typed_data";
import "../../../Utils/expect.dart";

check(length) {
  var l = new Uint8ClampedList(length);
  try {
    l.clear();
    Expect.fail("This operation should not be supported");
  } on UnsupportedError catch(ok) {}
  Expect.equals(length, l.length);
}

main() {
  check(0);
  check(1);
  check(100);
  check(2048);
}
