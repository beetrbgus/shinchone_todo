import 'package:flutter/material.dart';
import 'package:shinchone_todo/models/group.dart';
import 'package:shinchone_todo/models/task.dart';

final groups = [
  const Group(
    iconData: Icons.work,
    name: 'Work',
    color: Color.fromARGB(232, 239, 65, 114),
  ),
  const Group(
    iconData: Icons.star,
    name: 'Blog',
    color: Color.fromARGB(232, 85, 217, 98),
  ),
  const Group(
    iconData: Icons.folder,
    name: 'Blog',
    color: Color.fromARGB(232, 61, 127, 208),
  ),
  const Group(
    iconData: Icons.work,
    name: 'Work',
    color: Color.fromARGB(232, 239, 65, 114),
  ),
  const Group(
    iconData: Icons.star,
    name: 'Blog',
    color: Color.fromARGB(232, 85, 217, 98),
  ),
  const Group(
    iconData: Icons.folder,
    name: 'Blog',
    color: Color.fromARGB(232, 61, 127, 208),
  ),
];

final Map<String, List<Task>> tasks = {};
