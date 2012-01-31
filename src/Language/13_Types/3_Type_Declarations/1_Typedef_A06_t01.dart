/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion It is a compile-time error if any default values are specified in the signature of function type alias.
 * @description Checks that a compile error is produced when a null default value is specified for a required argument
 * in a function type alias.
 * @author iefremov
 * @reviewer rodionov
 * @compile-error
 */

typedef f(var a = null);

main() {
  try {
    Expect.isFalse(_(){} is f);
  }catch(var x){}
}
