import 'package:flutter/cupertino.dart';

class Task {
  String title;
  bool completed;

  Task({ @required this.title, this.completed = false });

  void toggleComplete() {
    completed = !completed;
  }
}