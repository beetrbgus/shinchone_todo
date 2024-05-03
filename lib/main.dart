import 'package:flutter/material.dart';
import 'package:shinchone_todo/data/dummy_data.dart';
import 'package:shinchone_todo/screens/groups.dart';
import 'package:shinchone_todo/screens/todo_main_screens.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TodoMainScreens(),
    );
  }
}
