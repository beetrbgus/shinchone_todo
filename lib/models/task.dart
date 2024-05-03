import 'package:shinchone_todo/models/group.dart';

class Task {
  const Task({
    required this.title,
    required this.description,
    required this.dueDate,
    required this.hour,
    required this.minute,
    required this.group,
  });
  final String title;
  final String description;
  final DateTime dueDate;
  final int hour;
  final int minute;
  final Group group;
}
