/*
 * Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion ShadowRoot Object: attribute bool resetStyleInheritance.
 * If true, the properties are set to initial value.
 */

import 'dart:html';
import "../../../../../Utils/expect.dart";
import '../../../testcommon.dart';

main() {
  test(() {
    var d = document;

    d.body.setInnerHtml(
      '<ul id="shHost">' +
              '<li id="li1" class="shadow">1</li>' +
              '<li id="li2" class="shadow2">2</li>' +
              '<li id="li3" class="shadow">3</li>' +
              '<li id="li4">4</li>' +
              '<li id="li5" class="shadow">5</li>' +
              '<li id="li6" class="shadow2">6</li>' +
      '</ul>',
      treeSanitizer: new NullTreeSanitizer());

    var defHeight1 = d.querySelector('#li1').offsetHeight;
    var defHeight2 = d.querySelector('#li2').offsetHeight;
    var defHeight3 = d.querySelector('#li3').offsetHeight;
    var defHeight4 = d.querySelector('#li4').offsetHeight;
    var defHeight5 = d.querySelector('#li5').offsetHeight;
    var defHeight6 = d.querySelector('#li6').offsetHeight;

    assert_true(defHeight1 > 0, 'Point 1: Element height should be greater than zero');
    assert_true(defHeight2 > 0, 'Point 2: Element height should be greater than zero');
    assert_true(defHeight3 > 0, 'Point 3: Element height should be greater than zero');
    assert_true(defHeight4 > 0, 'Point 4: Element height should be greater than zero');
    assert_true(defHeight5 > 0, 'Point 5: Element height should be greater than zero');
    assert_true(defHeight6 > 0, 'Point 6: Element height should be greater than zero');

    var host = d.querySelector('#shHost');

    d.body.setAttribute('style', 'font-size: 30px');

    var height1 = d.querySelector('#li1').offsetHeight;
    var height2 = d.querySelector('#li2').offsetHeight;
    var height3 = d.querySelector('#li3').offsetHeight;
    var height4 = d.querySelector('#li4').offsetHeight;
    var height5 = d.querySelector('#li5').offsetHeight;
    var height6 = d.querySelector('#li6').offsetHeight;


    assert_true(height1 > defHeight1, 'Point 11: Element height should be changed');
    assert_true(height2 > defHeight2, 'Point 12: Element height should be changed');
    assert_true(height3 > defHeight3, 'Point 13: Element height should be changed');
    assert_true(height4 > defHeight4, 'Point 14: Element height should be changed');
    assert_true(height5 > defHeight5, 'Point 15: Element height should be changed');
    assert_true(height6 > defHeight6, 'Point 16: Element height should be changed');

    //Shadow root to play with
    var s = createSR(host);

    var div = d.createElement('div');
    div.setInnerHtml('<ul><content select=".shadow"></content></ul>',
        treeSanitizer: new NullTreeSanitizer());
    s.append(div);
    s.resetStyleInheritance = true;

    assert_equals(d.querySelector('#li1').offsetHeight, defHeight1, 'Point 21: Inherited ' +
        'element style should be reset');
    assert_equals(d.querySelector('#li3').offsetHeight, defHeight3, 'Point 22: Inherited ' +
        'element style should be reset');
    assert_equals(d.querySelector('#li5').offsetHeight, defHeight5, 'Point 23: Inherited ' +
        'element style should be reset');
  }, 'A_10_01_01_02_02_T01');
}