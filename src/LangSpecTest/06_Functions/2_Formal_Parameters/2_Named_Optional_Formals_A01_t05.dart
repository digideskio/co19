/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion Optional parameters may be specified and provided with default values.
 *  defaultFormalParameter:
 *   normalFormalParameter ('=' expression)?
 *  ;
 * @description Checks that a statement cannot be used instead of expression.
 * @compile-error
 * @author iefremov
 */

f([var x = var z]) {}

main() {
  try {
    f();
  } catch(var x){}
}