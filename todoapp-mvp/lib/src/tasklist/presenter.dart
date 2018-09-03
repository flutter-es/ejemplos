import 'package:sqflite/sqflite.dart';

import '../data/task.dart';
import './contract.dart';
import '../data/repository/source.dart';
import '../data/repository/repository.dart';
import '../db/db.dart';

class TaskListPresenter implements BaseTaskListPresenter {
  BaseTaskListView view;
  DataSource repository;
  Database db;

  TaskListPresenter(BaseTaskListView view) {
    this.view = view;
    this.view.setPresenter(this);
  }

  @override
  void initPresenter() {
    openLocalDatabase().then((Database db) {
      this.db = db;
      this.repository = Repository(db);
      this.getTasks();
    }).catchError((err) {
      this.view.showEmptyMessage();
      if ((err as DatabaseException).isSyntaxError()) {
        this.view.showAlertErrorMessage('SQL syntax error');
      } else if ((err as DatabaseException).isOpenFailedError()) {
        this.view.showAlertErrorMessage('cannot open database');
      }
    });
  }

  @override
  void dispose() {
    if (db != null && db.isOpen) db.close();
  }

  @override
  void addTask(Task task) {
    this.repository.insertTask(task, (Task task) {
      this.view.showTasks([task]);
    }, (err) {
      this.view.showAlertErrorMessage('SQL syntax error');
    });
  }

  @override
  void getTasks() {
    this.repository.getTasks((List<Task> tasks) {
      this.view.showTasks(tasks);
    }, (error) {
      if ('$error'.length == 0) {
        this.view.showEmptyMessage();
      } else {
        this.view.showEmptyMessage();
        this.view.showAlertErrorMessage('SQL syntax error');
      }
    });
  }

  @override
  void removeAllTasks() {
    this.repository.deleteAllTasks(() {
      // no se hace nada
    }, (err) {
      this.view.showAlertErrorMessage('SQL syntax error');
    });
  }

  @override
  void updateTask(Task task) {
    this.repository.updateTask(task, (Task task) {
      String tmp = task.done ? 'complete' : 'not complete';
      this.view.showUpdatedDoneMessage(
          'Task ${task..shortDescription} is market as $tmp');
    }, (err) {
      print('$err');
      this.view.showAlertErrorMessage('SQL syntax error');
    });
  }
}
