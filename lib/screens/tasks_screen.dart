import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_bloc/model/task_model.dart';
import 'package:todo_bloc/widgets/task_list_widget.dart';

import '../blocs/bloc_exports.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        List<TaskModel> tasksList = state.allTasks;
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
              TaskList(taskList: tasksList),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
