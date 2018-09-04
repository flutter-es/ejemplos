import 'dart:async';

import 'package:todomvp/src/domain/task.dart';

typedef VoidCallback();
typedef OnLoadTask(Task task);
typedef OnLoadTasks(List<Task> task);
typedef OnErrorCallback(dynamic message);


/// Repositorio base encargado de implementar acciones contra una entidad del dominio
abstract class Repository<T> {

  void getAll(OnLoadTasks onLoadTasks, OnErrorCallback onError);
  void get(OnLoadTask onLoadTask, OnErrorCallback onError);

  void insert(T task, OnLoadTask onLoadTask, OnErrorCallback onError);
  void update(T task, OnLoadTask onLoadTask, OnErrorCallback onError);

  void delete(T task, VoidCallback onSuccess, OnErrorCallback onError);
  void deleteAll(VoidCallback onSuccess, OnErrorCallback onError);

  Future<void> initialize();
  void dispose();
}
