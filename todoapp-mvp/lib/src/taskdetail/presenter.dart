

import 'package:todomvp/src/domain/task.dart';
import 'package:todomvp/src/services/repository.dart';
import 'package:todomvp/src/services/taskRepository.dart';
import './contract.dart';

class TaskDetailPresenter implements BaseTaskDetailPresenter {
  BaseTaskDetailView view;
  Repository taskRepository;

  TaskDetailPresenter(BaseTaskDetailView view) {
    this.view = view;
    this.taskRepository = new TaskRepository();
  }

  @override
  void dispose() => {};

  @override
  void initPresenter() => taskRepository.initialize();

  @override
  deleteTask(Task task) {
    taskRepository.delete(task, () {}, (err) {});
  }
}
