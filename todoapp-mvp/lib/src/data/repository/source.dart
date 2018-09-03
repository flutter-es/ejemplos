import '../task.dart';

typedef VoidCallback();
typedef OnLoadTask(Task task);
typedef OnLoadTasks(List<Task> task);
typedef OnErrorCallback(dynamic message);

abstract class DataSource {
  void getTasks(OnLoadTasks onLoadTasks, OnErrorCallback onError);
  void getTask(OnLoadTask onLoadTask, OnErrorCallback onError);

  void insertTask(Task task, OnLoadTask onLoadTask, OnErrorCallback onError);
  void updateTask(Task task, OnLoadTask onLoadTask, OnErrorCallback onError);

  void deleteTask(Task task, VoidCallback onSuccess, OnErrorCallback onError);
  void deleteAllTasks(VoidCallback onSuccess, OnErrorCallback onError);
}
