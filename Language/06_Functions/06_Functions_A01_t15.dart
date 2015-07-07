/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion Functions include function declarations, methods, getters,
 * setters, constructors and function literals.
 * All functions have a signature and a body.
 * functionSignature:
 *   metadata returnType? identifier formalParameterList
 * ;
 * returnType: void | type
 * ;
 * functionBody:
 *   '=>' expression ';' | block
 * ;
 * block:
 *   '{' statements '}'
 * ;
 * @description Checks that the for statement can't  be a body of a function of
 * the form [functionSignature '=>' expression ';'].
 * @compile-error
 * @author msyabro
 * @reviewer kaigorodov
 * @reviewer iefremov
 */

f() => for(int i = 0; i < 100; i++);

main() {
  try {
    f();
  } catch(x){}
}