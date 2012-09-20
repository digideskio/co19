/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion double NEGATIVE_INFINITY
 * @description Comparing NEGATIVE_INFINITY with 0
 * @author hlodvig
 */


main() {
  Expect.isFalse((double.NEGATIVE_INFINITY > 0));
  Expect.isTrue((double.NEGATIVE_INFINITY < 0));
  Expect.isFalse((double.NEGATIVE_INFINITY >= 0));
  Expect.isTrue((double.NEGATIVE_INFINITY <= 0));
  Expect.isFalse((double.NEGATIVE_INFINITY == 0));
}