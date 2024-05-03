import 'package:flutter/material.dart';
import 'package:shinchone_todo/models/group.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({
    super.key,
    required this.group,
    required this.taskSize,
  });

  final List<Group> group;
  final int taskSize;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1.5,
      mainAxisSpacing: 16.0,
      crossAxisSpacing: 16.0,
      children: group.map((item) => _buildCard(item, taskSize)).toList(),
    );
  }
}

// 버튼 추가 항목
Widget _createGroupButton() {
  return SizedBox(
    height: 50,
    width: 100,
    child: Card(
      elevation: 4.0,
      color: Colors.black26,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
            ),
          ),
          const Text(
            "Create group",
            style: TextStyle(
              fontSize: 35,
            ),
          ),
        ],
      ),
    ),
  );
}

// 카드 항목
Widget _buildCard(Group group, int taskSize) {
  return SizedBox(
    height: 50,
    width: 100,
    child: Card(
      elevation: 4.0,
      color: group.color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(
                  2,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Icon(
                  group.iconData,
                  size: 40,
                ),
              ),
              Text(
                group.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            taskSize.toString(),
            style: const TextStyle(
              fontSize: 50,
            ),
          ),
        ],
      ),
    ),
  );
}
