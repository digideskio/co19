/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion The try statement supports the definition of exception handling 
 * code in a structured way.
 * tryStatement:
 *   try block (catchPart+ finallyPart? | finallyPart)
 * ;
 * catchPart:
 *   catch '(' declaredIdentifier (', ' declaredIndentifier)? ')' block
 * ;
 * finallyPart:
 *   finally block
 * ;
 * @description Checks that it is a compile-time error if "finally" is followed by
 * return statement, not a block.
 * @compile-error
 * @author iefremov
 */

main() {
  try {} catch (var ex) {} finally return;
}