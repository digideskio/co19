/*
 * Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/** 
 * @description No crash means PASS
 */
import "dart:html";
import "../../testcommon.dart";
import "../../../Utils/async_utils.dart";

main() {
  var style = new Element.html('''
      <style type=text/css>
      dd:first-letter { content:""; }
      dir:first-letter { text-align:""; }
      </style>
      ''', treeSanitizer: new NullTreeSanitizer());
  document.head.append(style);

  document.body.setInnerHtml('''
      <dd>
      <dir>
      <font>
      <form>
      <div>PASS</div>
      ''', treeSanitizer: new NullTreeSanitizer());
}
