import 'package:flutter/material.dart';
import 'package:ass3/todo_app/data/tasks_data.dart';
import 'package:ass3/todo_app/widgets/task_widget.dart';

class InCompleteTasksScreen extends StatelessWidget {
  Function fun;
  Function listDelete;
  InCompleteTasksScreen(this.fun, this.listDelete);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.where((element) => !element.isCompleted).length,
        itemBuilder: (context, index) {
          return TaskWidget(
              tasksList
                  .where((element) => !element.isCompleted)
                  .toList()[index],
              fun,
              listDelete);
        });
  }
}
