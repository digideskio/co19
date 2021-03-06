/*
 * Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @description Test passes if it does not crash.
 */
import "dart:html";
import "../../testcommon.dart";
import "../../../Utils/async_utils.dart";

main() {
  var docElement = document.documentElement;
  docElement.remove(); 
  asyncStart();
  window.onLoad.listen((_) {
    document.append(docElement);
    asyncEnd();
  });
}
