import 'package:flutter/material.dart';

import 'data/todo.dart';

class ColorPallete {
  static const black = Color(0xFF242323);
  static const blackLight = Color(0xFF393838);
  static const red = Color(0xFFCD3608);
  static const grey = Color(0xFFC2C2C2);
  static const white = Color(0xFFFFFFEF);
}

class DummyData {
  static const taskLists = [
    Todo(title : "Task 1", description : "belajar dart"),
    Todo(title : "Task 2", description : "belajar flutter"),
    Todo(title : "Task 3", description : "belajar python"),
    Todo(title : "Task 4", description : "belajar flask"),
    Todo(title : "Task 5", description : "belajar golang"),
    Todo(title : "Task 6", description : "belajar swift"),
    Todo(title : "Task 7", description : "belajar kotlin"),
    Todo(title : "Task 8", description : "belajar php"),
    Todo(title : "Task 9", description : "belajar javascript"),
    Todo(title : "Task 10", description : "belajar typescript"),
    Todo(title : "Task 11", description : "belajar r lang"),

  ];
}