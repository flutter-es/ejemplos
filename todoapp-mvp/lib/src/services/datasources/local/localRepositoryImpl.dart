import 'dart:async';

import 'package:sqflite/sqflite.dart';
import 'package:todomvp/src/domain/const.dart';
import 'package:todomvp/src/services/datasources/datasource.dart';

import 'package:todomvp/src/domain/task.dart';
import 'package:todomvp/src/services/datasources/local/db/const.dart';
import 'package:todomvp/src/services/datasources/local/db/db.dart';
import 'package:todomvp/src/services/repository.dart';


/// El [LocalDataSource] es el la especificación de [DataSource] la cual,
/// va a ejecutar querys a la base de datos local.
class LocalDataSource implements DataSource<Task> {
  Database database;

  @override
  void deleteAll(VoidCallback onSuccess, OnErrorCallback onError) {
    this
        .database
        .execute('DELETE FROM ${DataBaseConstants.TASK_TABLE_NAME}')
        .then((_) {
      onSuccess();
    }).catchError((err) {
      onError(err);
    });
  }

  @override
  void get(OnLoadTask onLoadTask, OnErrorCallback onError) {}

  @override
  void getAll(OnLoadTasks onLoadTasks, OnErrorCallback onError) {
    this
        .database
        .query('${DataBaseConstants.TASK_TABLE_NAME};')
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
  void delete(Task task, VoidCallback onSuccess, OnErrorCallback onError) {
    this.database.delete(DataBaseConstants.TASK_TABLE_NAME,
        where: '${TaskConstants.ID} = ?',
        whereArgs: [task.id]).then((int i) {
      onSuccess();
    }).catchError((err) {
      onError(err);
    });
  }

  @override
  void insert(Task task, OnLoadTask onLoadTask, OnErrorCallback onError) {
    this
        .database
        .insert(DataBaseConstants.TASK_TABLE_NAME, task.toJson())
        .then((int index) {
      onLoadTask(task..id = index);
    }).catchError((err) {
      onError(err);
    });
  }

  @override
  void update(Task task, OnLoadTask onLoadTask, OnErrorCallback onError) {
    this.database.update(DataBaseConstants.TASK_TABLE_NAME, task.toJson(),
        where: '${TaskConstants.ID} = ?',
        whereArgs: [task.id]).then((int i) {
      onLoadTask(task);
    }).catchError((err) {
      onError(err);
    });
  }

  @override
  void dispose() {
    database != null ? database.close() : database = null;
  }

  @override
  Future<void> initialize() async {
    database = await openLocalDatabase();
  }
}
