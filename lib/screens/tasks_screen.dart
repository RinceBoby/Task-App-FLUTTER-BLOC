import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_bloc/model/task_model.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({Key? key}) : super(key: key);

  List<TaskModel> taskList = [
    TaskModel(title: 'Task1'),
    TaskModel(title: 'Task2'),
    TaskModel(title: 'Task3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Task App",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.add_circled),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Chip(
              label: Text("Tasks:"),
            ),
          ),
          ListView.builder(
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
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
