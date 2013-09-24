//Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
//for details. All rights reserved. Use of this source code is governed by a
//BSD-style license that can be found in the LICENSE file.

part of models;

final appModel = new Tracker();

class Tracker extends ObservableBase {
  @observable List<Task> tasks;
}

