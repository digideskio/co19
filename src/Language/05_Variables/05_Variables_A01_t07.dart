/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion variableDeclaration: declaredIdentifier (',' identifier)* ;
 * initializedVariableDeclaration: declaredIdentifier ('=' expression)? (',' initializedIdentifier)* ;
 * initializedIdentifierList: initializedIdentifier (',' initializedIdentifier)* ;
 * initializedIdentifier: identifier ('=' expression)? ;
 * declaredIdentifier: finalVarOrType identifier ;
 * finalVarOrType: final type? | var | type ;
 * @description Checks that variable declaration must have at least one identifier after the comma.
 * @author iefremov
 * @compile-error
 */

main() {
  try {
    var x, ;
  }
  catch(var x) {}
}
