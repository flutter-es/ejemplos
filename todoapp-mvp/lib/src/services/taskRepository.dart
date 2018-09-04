
import 'dart:async';

import 'package:todomvp/src/domain/task.dart';
import 'package:todomvp/src/services/datasources/datasource.dart';
import 'package:todomvp/src/services/datasources/local/localRepositoryImpl.dart';
import 'package:todomvp/src/services/repository.dart';

/// El [TaskRepository] va a encargarse de decidir
/// cual modelo(local o remoto) usar.
///
/// Para este ejemplo solo se va a usar un modelo
/// local(sqlite3).
class TaskRepository implements Repository<Task> {

  DataSource<Task> datasource;

  TaskRepository() {
    datasource = new LocalDataSource();
  }

  @override
  void deleteAll(VoidCallback onSuccess, OnErrorCallback onError) {
    this.datasource.deleteAll(onSuccess, onError);
  }

  @override
  void get(OnLoadTask onLoadTask, OnErrorCallback onError) {
    this.datasource.get(onLoadTask, onError);
  }

  @override
  void getAll(OnLoadTasks onLoadTasks, OnErrorCallback onError) {
    this.datasource.getAll(onLoadTasks, onError);
  }

  @override
  void delete(Task task, VoidCallback onSuccess, OnErrorCallback onError) {
    this.datasource.delete(task, onSuccess, onError);
  }

  @override
  void insert(Task task, OnLoadTask onLoadTask, OnErrorCallback onError) {
    this.datasource.insert(task, onLoadTask, onError);
  }

  @override
  void update(Task task, OnLoadTask onLoadTask, OnErrorCallback onError) {
    this.datasource.update(task, onLoadTask, onError);
  }

  @override
  void dispose() {
    datasource.dispose();
  }

  @override
  Future<void> initialize() async {
    await datasource.initialize();
  }
}
