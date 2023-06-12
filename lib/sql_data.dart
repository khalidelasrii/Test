import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqlData {
  static Database? _db;
  Future<Database?> get db async {
    if (_db == null) {
      _db = await initialDb();
      return _db;
    } else {
      return _db;
    }
  }

  initialDb() async {
    String dabatabasepath = await getDatabasesPath();
    String path = join(dabatabasepath, 'khalid.db');
    Database mydb = await openDatabase(path,
        onCreate: _onCreate, version: 3, onUpgrade: _onUpgrade);

    return mydb;
  }

  _onUpgrade(Database db, int oldVersion, int newvesion) {}

  _onCreate(Database db, int version) async {
    await db.execute("""  CREATE TABLE "Item"(
          id INTEGER AUTOINCREMENT NOT NULL PRIMARY KEY
          Items TEXT 
          descreption TEXT 

    )       """);

    print('..... TABLE AND DATABASE  IS CREATE .....');
  }

//Read Method

  readData(String sql) async {
    Database? mydb = await db;

    List<Map> response = mydb!.rawQuery(sql) as List<Map>;
    return response;
  }

// Insert data
  insertdata(String sql) async {
    Database? mydb = await db;
    int response = mydb!.rawInsert(sql) as int;
    return response;
  }
// Update data

  updatedata(String sql) async {
    Database? mydb = await db;
    int response = mydb!.rawUpdate(sql) as int;
    return response;
  }

  // delete data

  deletdata(String sql) async {
    Database? mydb = await db;
    int response = mydb!.rawDelete(sql) as int;
    return response;
  }
}
