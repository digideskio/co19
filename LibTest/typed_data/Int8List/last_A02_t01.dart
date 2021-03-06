/*
 * Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion final E last
 * If this is empty throws a StateError.
 * @description Checks that a [StateError] is thrown if a list is empty.
 * @author msyabro
 */
import "dart:typed_data";
import "../../../Utils/expect.dart";

main() {
  var l = new Int8List.fromList([]);
  try {
    l.last;
    Expect.fail("StateError is expected");
  } on StateError catch(ok) {}
}

