/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion Returns true if one element of the collection satisfies the
 * predicate [f]. Returns false otherwise.
 * @description Tries to pass non-function object as [f].
 * @author msyabro
 * @reviewer varlax
 */


main() {
  Queue list = new Queue();
  
  int x;
  list.some(null);
  list.some(x);

  list.addLast(1);
  
  try {
    list.some(null);
    Expect.fail("ObjectNotClosureException is expected");
  } catch(ObjectNotClosureException e) {}
  
  try {
    list.some(x);
    Expect.fail("ObjectNotClosureException is expected");
  } catch(ObjectNotClosureException e) {}
}