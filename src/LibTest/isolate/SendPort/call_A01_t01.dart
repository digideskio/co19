/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion Creates a new single-shot receive port, sends a message to this
 * send port with replyTo set to the opened port, and returns the receive port.
 * @description Checks that opened port is single-shot and replyTo is set to the 
 * opened port.
 * @expected-output message1 received
 * @author msyabro
 * @reviewer kaigorodov
 */

#import('dart:isolate');

void main() {
  ReceivePort rPort = new ReceivePort();
  SendPort sPort = rPort.toSendPort();
  
  ReceivePort singleShot = sPort.call("message1");
  
  rPort.receive(void func(var message, SendPort replyTo) {
    replyTo.send(message+" received", null);
  });
  
  singleShot.receive(void func(var message, SendPort replyTo) {
    print(message);
    rPort.close();
  });
  
}