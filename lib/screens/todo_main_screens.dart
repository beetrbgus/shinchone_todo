import 'package:flutter/material.dart';
import 'package:shinchone_todo/data/dummy_data.dart';
import 'package:shinchone_todo/screens/groups.dart';

class TodoMainScreens extends StatelessWidget {
  const TodoMainScreens({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "그룹이나 작업을 검색해보세요!",
                  hintStyle: TextStyle(fontSize: 14),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'My groups',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.lightBlue,
                    ),
                  ),
                ],
              ),
              const GroupListScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
