/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion Execution of a case clause case ek: sk of a switch statement
 * switch (e) {
 *   label11 … label1j1 case e1: s1
 * …
 *   labeln1 ..labelnjn case en: sn
 * }
 * proceeds as follows:
 * The expression ek == id is evaluated to an object o which is then subjected
 * to boolean conversion yielding a value v. If v is not true, the following
 * case, case ek+1: sk+1 is executed if it exists. If v is true, let h be the
 * smallest integer such that h >= k and sh is non-empty. The sequence of
 * statements sh is executed if it exists. If execution reaches the point after
 * sh then a runtime error occurs, unless h = n.
 * @description Checks that falling through produces a runtime error, unless
 * the current case clause is empty or the last case clause.
 * @static-warning
 * @author msyabro
 * @reviewer rodionov
 * @issue 7537
 */
import '../../../Utils/expect.dart';

test(value) {
  var result;

  switch (value) {
    case 1:  result = 1;
             break;
    case 2:  result = 2; /// static warning - case fall-through, see "Switch"
    case 3:  result = 3; // shouldn't be a warning - issue 7537
  }
  return result;
}

testEmptyCases(value) {
  var result;

  switch (value) {
    case 1:
    case 2: result = 1; /// static warning - case fall-through, see "Switch"
    case 3:
    case 4: result = 2;
            break;
    case 5:
    case 6:
  }

  return result;
}

main() {
  Expect.equals(1, test(1));
  Expect.equals(3, test(3));
  Expect.equals(null, test(100));

  Expect.throws(() {test(2);});

  Expect.equals(null, testEmptyCases(5));
  Expect.equals(null, testEmptyCases(6));
  Expect.equals(2, testEmptyCases(3));

  Expect.throws(() {testEmptyCases(1);});
  Expect.throws(() {testEmptyCases(2);});
}
