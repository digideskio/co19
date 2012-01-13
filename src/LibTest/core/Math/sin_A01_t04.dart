/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion Evaluates the trigonometric sine of an angle.
 * @description Checks result when argument ranges from 1E-52 to 1E-16.
 * @author msyabro
 * @reviewer pagolubev
 * @needsreview Why exact equality?
 */

main() {
  Expect.equals(.0, Math.sin(0.0));
  Expect.equals(.0, Math.sin(-0.0));
  
  for(double x = 1e-52; x < 1e-16; x *= 10) {
    Expect.equals(x, Math.sin(x));
    Expect.equals(-x, Math.sin(-x));
  }
}