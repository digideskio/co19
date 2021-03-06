/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion Map<K, V> abstract class
 * An unordered collection of key-value pairs, from which you retrieve a value
 * by using its associated key.
 * Each key must be unique. Null values are supported, but null keys are not.
 * @description Checks that null keys are not supported.
 * @needsreview issue #13013
 * @author kaigorodov
 */
import "../../../Utils/expect.dart";

main() {
  Map<String, Object> map = new Map<String, Object>();
//  print("map[null] = ${map[null]}");
  map[null] = "123";
  print("map[null] = ${map[null]}");
  Expect.isFalse(map[null] == "1");
}
