import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'package:todomvp/src/domain/const.dart';
import 'package:todomvp/src/services/datasources/local/db/const.dart';

/// Se encarga de crear la base de datos
/// y si el desarrollador así lo prefiere,
/// sus tablas de base de datos.
Future<Database> openLocalDatabase() async {
  String databasesPath = await getDatabasesPath();
  String path = join(databasesPath, DataBaseConstants.DB_NAME);

  return await openDatabase(path, version: DataBaseConstants.VERSION,
      onCreate: (Database db, int version) async {
    await db.execute('''
          CREATE TABLE IF NOT EXISTS ${DataBaseConstants.TASK_TABLE_NAME} (
            ${TaskConstants.ID} INTEGER PRIMARY KEY,
            ${TaskConstants.SHORT_DESCRIPTION} TEXT NOT NULL,
            ${TaskConstants.DESCRIPTION} TEXT NOT NULL,
            ${TaskConstants.DONE} INTEGER DEFAULT 0
          );
          ''');
  });
}
