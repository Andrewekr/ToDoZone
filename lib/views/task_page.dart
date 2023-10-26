import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/add_task_view.dart';
import 'package:flutter_application_1/views/bottom_sheet/task_info_view.dart';
import 'package:flutter_application_1/views/bottom_sheet/task_list_view.dart';
import 'package:flutter_application_1/views/header_view.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: true,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: HeaderView(),
            ),
            Expanded(
              flex: 1,
              child: TaskInfoView(),
            ),
            Expanded(
              flex: 7,
              child: TaskListView(),
            ),
          ],
        ),
      ),
      floatingActionButton: const AddTaskView(),
    );
  }
}
