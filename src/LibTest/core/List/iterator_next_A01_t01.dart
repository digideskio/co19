/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion Gets the next element in the iteration.
 * @description Checks that next element in the iteration is got.
 * @author vasya
 * @reviewer msyabro
 * @reviewer varlax
 */

void checkNext(List a) {
  Iterator it = a.iterator();
  var i = 0;
  while (it.hasNext()) {
    Expect.equals(it.next(), a[i]);
    ++i;
  }
}

main() {
  checkNext([null,0,"1",false]);
  checkNext(const [null,0,"1",false]);

  List a = new List(17495);
  for (var i=0; i < a.length; i++) {
    a[i] = a.length - i;
  }
  checkNext(a);

  List l = new List();
  l.addAll(["0","1","2","3","4","5",6,7,8,9,null]);
  a = new List.from(l);
  checkNext(a);
}