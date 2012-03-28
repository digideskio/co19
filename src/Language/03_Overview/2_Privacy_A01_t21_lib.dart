/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion Dart supports two levels of privacy: public and private.
 * A declaration is private if it begins with an underscore (the _ character) otherwise it is public.
 * A declaration m is accessible to library L if m is declared in L or if m is public.
 * @description
 * @author iefremov
 */

#library("2_Privacy_A01_t21_lib");
#import("2_Privacy_A01_t21.dart");

class B extends A {
  var _var = 100500;
  _func() {return 6031769;}
}