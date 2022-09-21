import 'package:flutter/material.dart';
import 'package:todo_bloc/model/task_model.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
    required this.taskList,
  }) : super(key: key);

  final List<TaskModel> taskList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          var task = taskList[index];
          return ListTile(
            title: Text(task.title),
            trailing: Checkbox(
              value: task.isDone,
              onChanged: (value) {},
            ),
          );
        },
      ),
    );
  }
}
