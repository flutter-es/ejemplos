import 'package:sqflite/sqflite.dart';

import '../task.dart';
import './local/repository.dart';
import './source.dart';

/// El [Repository] va a encargarse de decidir
/// cual modelo(local o remoto) usar.
///
/// Para este ejemplo solo se va a usar un modelo
/// local(sqlite3).
class Repository implements DataSource {
  LocalRepository repository;

  Repository(Database db) {
    repository = LocalRepository()..database = db;
  }

  @override
  void deleteAllTasks(VoidCallback onSuccess, OnErrorCallback onError) {
    this.repository.deleteAllTasks(onSuccess, onError);
  }

  @override
  void getTask(OnLoadTask onLoadTask, OnErrorCallback onError) {
    this.repository.getTask(onLoadTask, onError);
  }

  @override
  void getTasks(OnLoadTasks onLoadTasks, OnErrorCallback onError) {
    this.repository.getTasks(onLoadTasks, onError);
  }

  @override
  void deleteTask(Task task, VoidCallback onSuccess, OnErrorCallback onError) {
    this.repository.deleteTask(task, onSuccess, onError);
  }

  @override
  void insertTask(Task task, OnLoadTask onLoadTask, OnErrorCallback onError) {
    this.repository.insertTask(task, onLoadTask, onError);
  }

  @override
  void updateTask(Task task, OnLoadTask onLoadTask, OnErrorCallback onError) {
    this.repository.updateTask(task, onLoadTask, onError);
  }
}
