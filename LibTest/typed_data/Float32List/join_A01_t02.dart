/*
 * Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion String join([String separator = ""])
 * Converts each element to a String and concatenates the strings.
 * Converts each element to a String by calling Object.toString on it.
 * Then concatenates the strings, optionally separated by the separator string.
 * @description Checks that if [separator] is omitted, elements of [this]
 * are not separated in the returned String.
 * @author msyabro
 */
import "dart:typed_data";
import "../../../Utils/expect.dart";

check(list, expectedString) {
  var l = new Float32List.fromList(list);
  var s = l.join();
  Expect.stringEquals(expectedString, s);
}

main() {
  check([],  "");
  check([0.25, 1.0], "0.251.0");
  check([1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0],
      "1.02.03.04.05.06.07.08.09.0");
}
