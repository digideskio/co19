/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion factory StreamController({void onListen(), void onPause(),
 *                  void onResume(), void onCancel(), bool sync: false})
 * The onPause function is called when the stream becomes paused.
 * @description Checks that the onPause function is called when the stream becomes paused.
 * @author kaigorodov
 */

import "dart:async";
import "../../../Utils/async_utils.dart";
import "../../../Utils/expect.dart";

main() {
  bool onPauseCalled=false;
  StreamController controller=new StreamController(
    onPause: (){onPauseCalled=true;}
  );

  StreamSubscription subs=controller.stream.listen((event){});
  controller.add(1);
  Expect.isFalse(onPauseCalled);

  subs.pause();
  Expect.isTrue(onPauseCalled);
}