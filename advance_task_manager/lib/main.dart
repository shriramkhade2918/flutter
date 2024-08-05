import 'package:advance_task_manager/database.dart';
import 'package:advance_task_manager/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'advanceApp.dart';

const appTable = '''
        CREATE TABLE ToDoData(
          ind INTEGER PRIMARY KEY ,
          title TEXT,
          desc TEXT,
          date TEXT
        )
''';
const deleteTable = '''
        CREATE TABLE DeleteData(
          ind INTEGER PRIMARY KEY ,
          title TEXT,
          desc TEXT,
          date TEXT
        )
''';
const completeTable = '''
        CREATE TABLE DataComplete(
          ind INTEGER PRIMARY KEY ,
          title TEXT,
          desc TEXT,
          date TEXT
        )
''';
const paindingTable = '''
        CREATE TABLE PaindingData(
          ind INTEGER PRIMARY KEY ,
          title TEXT,
          desc TEXT,
          date TEXT
        )
''';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), "Shriram1.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute(appTable + deleteTable + completeTable + paindingTable);
    },
  );

  task = await getToDoClassData();
  // completeTask = await getCompleteData();
  paindingTask = task;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
