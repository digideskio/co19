/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion Operators are instance methods with special names.
 * Some, but not all, operators may be defined by user code, as described in section 7.1.2.
 * 7.1.2: The following names are allowed for user-defined operators: ==, <, >, <=,
 * >=, -, +, *, ~/, %, |, ^, &, <<, >>, >>>, []=, [], ~, negate.
 * @description Checks that trying to declare operators not listed above (!=) in an interface
 * results in a compile time error.
 * @author vasya
 * @compile-error
 * @reviewer rodionov
 */

interface I {
  bool operator !=(I other);  
}

class II implements I {
}

boolean v;

main() {
 try{
   I i1=new II();
   I i2=new II();
   v= (i1!=i2);
 } catch(var x) {}
}
