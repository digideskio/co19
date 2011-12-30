/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion Every function declaration includes a formal parameter list, which consists of
 * a list of required parameters, followed by any optional parameters. Optional
 * parameters consist of a list of named parameters.
 * formalParameterList:
 *   '(' ')' |
 *   '(' normalFormalParameters ( ', ' namedFormalParameters)? ')' |
 *   (namedFormalParameters)
 * ;
 * normalFormalParameters:
 *   normalFormalParameter (', ' normalFormalParameter)*
 * ;
 * namedFormalParameters:
 *   '[' defaultFormalParameter (', ' defaultFormalParameter)* ']'
 * ;
 * @description Checks that named parameters can't precede positional parameters.
 * @compile-error
 * @author msyabro
 * @reviewer kaigorodov
 * @reviewer iefremov
 */

f([var a], var b) {}

main() {
  try {
    f(1, 1);
  } catch(var x){}
}