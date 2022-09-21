import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../model/task_model.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc() : super(const TasksState()) {
    on<AddTask>(_onAddTask);
    on<UpdateTask>(_onUpdateTask);
    on<DeleteTask>(_onDeleteTask);
  }

  //<<<<<OnAddTask>>>>>//
  void _onAddTask(AddTask event, Emitter<TasksState> emit) {
    final state = this.state;
    emit(
      TasksState(
        allTasks: List.from(state.allTasks)..add(event.task),
      ),
    );
  }

  //<<<<<OnUpdateTask>>>>>//
  void _onUpdateTask(UpdateTask event, Emitter<TasksState> emit) {}

  //<<<<<OnDeleteTask>>>>>//
  void _onDeleteTask(DeleteTask event, Emitter<TasksState> emit) {}
}
