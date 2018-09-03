import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import './const.dart';

/// Se encarga de crear la base de datos
/// y si el desarrollador así lo prefiere,
/// sus tablas de base de datos.
Future<Database> openLocalDatabase() async {
  String databasesPath = await getDatabasesPath();
  String path = join(databasesPath, DatabaseConstants.DB_NAME);

  return await openDatabase(path, version: DatabaseConstants.VERSION,
      onCreate: (Database db, int version) async {
    await db.execute('''
          CREATE TABLE IF NOT EXISTS ${DatabaseConstants.TABLE_NAME} (
            ${DatabaseConstants.ID} INTEGER PRIMARY KEY,
            ${DatabaseConstants.SHORT_DESCRIPTION} TEXT NOT NULL,
            ${DatabaseConstants.DESCRIPTION} TEXT NOT NULL,
            ${DatabaseConstants.DONE} INTEGER DEFAULT 0
          );
          ''');
  });
}
