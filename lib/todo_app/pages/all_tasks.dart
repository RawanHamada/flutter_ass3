import 'package:ass3/todo_app/data/tasks_data.dart';
import 'package:ass3/todo_app/widgets/task_widget.dart';
import 'package:flutter/material.dart';

class AllTasksScreen extends StatelessWidget {
  Function fun;
  Function listDelete;
  AllTasksScreen(this.fun,this.listDelete);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          return TaskWidget(tasksList[index], fun, listDelete);
        });
  }
}
