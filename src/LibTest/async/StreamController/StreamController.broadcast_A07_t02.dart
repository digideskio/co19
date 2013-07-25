/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion factory StreamController.broadcast({void onListen(), void onCancel(), bool sync: false})
 * The onListen callback is called when the first listener is subscribed,
 * and the onCancel is called when there are no longer any active listeners.
 
  If a listener is added again later, after the onCancel was called, the onListen will be called again.
 * @description Checks that the onCancel function is called when the listener ends its subscription.
 * @author kaigorodov
 */

import "dart:async";
import "../../../Utils/async_utils.dart";
import "../../../Utils/expect.dart";

main() {
  bool onCancelCalled=false;
  asyncStart();
  StreamController controller=new StreamController.broadcast(
    onCancel: (){
      onCancelCalled=true;
      asyncEnd();
    }
  );

  Expect.isFalse(onCancelCalled);
  StreamSubscription subs=controller.stream.listen((event){});
  
  subs.cancel();
  Expect.isTrue(onCancelCalled);
}