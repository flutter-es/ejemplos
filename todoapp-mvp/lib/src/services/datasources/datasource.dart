
import 'dart:async';

import 'package:todomvp/src/services/repository.dart';

/// Modelo base encargado de implementar el acceso a los modelos de dominio para el ejemplo.
/// Es común que los datos provenientes de una API sean diferentes a los que necesite tu App y
/// se deban de transformar
abstract class DataSource<T> {

  void getAll(OnLoadTasks onLoadTasks, OnErrorCallback onError);
  void get(OnLoadTask onLoadTask, OnErrorCallback onError);

  void insert(T task, OnLoadTask onLoadTask, OnErrorCallback onError);
  void update(T task, OnLoadTask onLoadTask, OnErrorCallback onError);

  void delete(T task, VoidCallback onSuccess, OnErrorCallback onError);
  void deleteAll(VoidCallback onSuccess, OnErrorCallback onError);

  Future<void> initialize();
  void dispose();

}