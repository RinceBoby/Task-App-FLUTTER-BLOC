part of 'tasks_bloc.dart';

abstract class TasksEvent extends Equatable {
  const TasksEvent();

  @override
  List<Object> get props => [];
}

//<<<<<Add_Task>>>>>//
class AddTask extends TasksEvent {
  final TaskModel task;
  const AddTask({
    required this.task,
  });
  @override
  List<Object> get props => [task];
}

//<<<<<Update_Task>>>>>//
class UpdateTask extends TasksEvent {
  final UpdateTask task;
  const UpdateTask({
    required this.task,
  });
  @override
  List<Object> get props => [];
}

//<<<<<Delete_Task>>>>>//
class DeleteTask extends TasksEvent {
  final DeleteTask task;
  const DeleteTask({
    required this.task,
  });
  @override
  List<Object> get props => [];
}
