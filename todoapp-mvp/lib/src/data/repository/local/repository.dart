import 'package:sqflite/sqflite.dart';

import '../../task.dart';
import '../../../db/const.dart';
import '../source.dart';


/// El [LocalRepository] es el modelo local, el cual,
/// va a ejecutar querys a la base de datos local.
class LocalRepository implements DataSource {
  Database database;

  @override
  void deleteAllTasks(VoidCallback onSuccess, OnErrorCallback onError) {
    this
        .database
        .execute('DELETE FROM ${DatabaseConstants.TABLE_NAME}')
        .then((_) {
      onSuccess();
    }).catchError((err) {
      onError(err);
    });
  }

  @override
  void getTask(OnLoadTask onLoadTask, OnErrorCallback onError) {}

  @override
  void getTasks(OnLoadTasks onLoadTasks, OnErrorCallback onError) {
    this
        .database
        .query('${DatabaseConstants.TABLE_NAME};')
        .then((List<Map<String, dynamic>> tasksMap) {
      List<Task> tasks = List<Task>();
      for (Map<String, dynamic> tmpTask in tasksMap) {
        tasks.add(Task.fromJson(tmpTask));
      }

      if (tasks.length > 0)
        onLoadTasks(tasks);
      else
        onError('');
    }).catchError((err) {
      onError(err);
    });
  }

  @override
  void deleteTask(Task task, VoidCallback onSuccess, OnErrorCallback onError) {
    this.database.delete(DatabaseConstants.TABLE_NAME,
        where: '${DatabaseConstants.ID} = ?',
        whereArgs: [task.id]).then((int i) {
      onSuccess();
    }).catchError((err) {
      onError(err);
    });
  }

  @override
  void insertTask(Task task, OnLoadTask onLoadTask, OnErrorCallback onError) {
    this
        .database
        .insert(DatabaseConstants.TABLE_NAME, task.toJson())
        .then((int index) {
      onLoadTask(task..id = index);
    }).catchError((err) {
      onError(err);
    });
  }

  @override
  void updateTask(Task task, OnLoadTask onLoadTask, OnErrorCallback onError) {
    this.database.update(DatabaseConstants.TABLE_NAME, task.toJson(),
        where: '${DatabaseConstants.ID} = ?',
        whereArgs: [task.id]).then((int i) {
      onLoadTask(task);
    }).catchError((err) {
      onError(err);
    });
  }
}
