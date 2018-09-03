import '../task.dart';

typedef VoidCallback();
typedef OnLoadTask(Task task);
typedef OnLoadTasks(List<Task> task);
typedef OnErrorCallback(dynamic message);


/// Modelo base encargado de implementar metodos
/// que van a ser utilizados por modelos locales(base de datos)
/// o modelos de remotos(conexiones a bases de datos remotes a
/// travez de una api).
abstract class DataSource {
  void getTasks(OnLoadTasks onLoadTasks, OnErrorCallback onError);
  void getTask(OnLoadTask onLoadTask, OnErrorCallback onError);

  void insertTask(Task task, OnLoadTask onLoadTask, OnErrorCallback onError);
  void updateTask(Task task, OnLoadTask onLoadTask, OnErrorCallback onError);

  void deleteTask(Task task, VoidCallback onSuccess, OnErrorCallback onError);
  void deleteAllTasks(VoidCallback onSuccess, OnErrorCallback onError);
}
