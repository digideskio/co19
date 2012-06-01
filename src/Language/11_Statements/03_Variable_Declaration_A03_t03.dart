/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion In all cases, iff the variable declaration is prefixed with either the const
 * or the final modifier, the variable is marked as final.
 * @description Checks that if the variable declaration is prefixed with the
 * const modifier, then that variable cannot be assigned a new value outside of
 * this declaration.
 * @compile-error
 * @author msyabro
 */

main() {
  const id = 0;
  try {
    id = 1;
  } catch(var e) {}
}
