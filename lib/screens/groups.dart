import 'package:flutter/material.dart';
import 'package:shinchone_todo/data/dummy_data.dart';
import 'package:shinchone_todo/models/group.dart';
import 'package:shinchone_todo/screens/group.dart';

class GroupListScreen extends StatefulWidget {
  const GroupListScreen({
    super.key,
  });

  @override
  State<GroupListScreen> createState() => _GroupListScreenState();
}

class _GroupListScreenState extends State<GroupListScreen> {
  int currentPage = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 600,
      child: PageView.builder(
          onPageChanged: (page) {},
          itemCount: ((groups.length) + 3) ~/ 4,
          itemBuilder: (context, index) {
            final startIndex = index * 4;
            final endIndex = (startIndex + 4) > groups.length
                ? groups.length
                : (startIndex + 4);
            final groupInPage = groups.sublist(startIndex, endIndex);
            return GroupScreen(group: groupInPage, taskSize: tasks.length);
          }),
    );
  }
}
