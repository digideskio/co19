/*
 * Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
 * for details. All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
/**
 * @assertion It is a compile-time error if a name N is referenced or re-exported by a
 * library A and N is introduced into the import namespace of A by more than one import.
 * @description Checks that it is not a compile-time error when a library A imports (with the same prefix)
 * two distinct libraries that contain no declarations themselves but both import and re-export
 * a third library D, A references and re-exports a name from D, but it's hidden by one of the import
 * directives in A (so there's no actual name clash). 
 * @author rodionov
 */

import "2_Exports_A03_t21_p1_lib.dart" & export;
import "2_Exports_A03_t21_p2_lib.dart" hide foo;

main() {
  foo x;
}