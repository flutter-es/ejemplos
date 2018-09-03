import 'package:sqflite/sqflite.dart';

import './contract.dart';
import '../data/task.dart';
import '../data/repository/repository.dart';

class TaskDetailPresenter implements BaseTaskDetailPresenter {
  BaseTaskDetailView view;
  Repository repository;

  TaskDetailPresenter(BaseTaskDetailView view, Database db) {
    this.view = view;
    this.view.setPresenter(this);

    this.repository = Repository(db);
  }

  @override
  void dispose() {}

  @override
  void initPresenter() {}

  @override
  deleteTask(Task task) {
    repository.deleteTask(task, () {}, (err) {});
  }
}
