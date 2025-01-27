import 'package:bmi_calculator/todo_home_screen.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(const TodoistCloneApp());
}

class TodoistCloneApp extends StatelessWidget {
  const TodoistCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Todoist Clone App",
      home: TodoHomeScreen(),
    );
  }
}