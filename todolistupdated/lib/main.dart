import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todolistupdated/Practice.dart';

// make global because access anywere
dynamic database;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  database = openDatabase(
    join(await getDatabasesPath(), "ToDolist19.db"),
    version: 1,
    onCreate: (db, version) {
      return db.execute('''
        CREATE TABLE ToDoList(
          taskid INTEGER PRIMARY KEY AUTOINCREMENT,
          title Text ,
          dis TEXT ,
          date TEXT,
          done INTEGER
        )
        ''');
    },
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(brightness: Brightness.dark, primarySwatch: Colors.blue),
      // theme: ThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      home: Practice(),
    );
  }
}

