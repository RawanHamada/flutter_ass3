import 'package:ass3/todo_app/data/tasks_data.dart';
import 'package:flutter/material.dart';
import 'package:ass3/todo_app/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Function listDelete;
  Task task;
  TaskWidget(this.task, this.fun,this.listDelete);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: task.isCompleted ? Colors.green : Colors.black45,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        children: [
          // Icon(Icons.delete),
          IconButton(onPressed: listDelete(
            tasksList.remove(task)
          ), icon: Icon(Icons.delete)),
          Text(task.title),
          Checkbox(
            value: task.isCompleted,
            onChanged: (v) {
              fun(task);
            },
          )
        ],
      ),
    );
  }
}
