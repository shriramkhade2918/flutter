import 'package:flutter/material.dart';
//import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'AdvanceToDoList.dart';

class ToDoClass {
  int? ind;
   String title;
   String desc;
   String date;

  ToDoClass(
      {this.ind, required this.title, required this.desc, required this.date});

  Map<String, dynamic> toDoMap() {
    return {"ind": ind, "title": title, "desc": desc, "date": date};
  }

  @override
  String toString() {
    return "{ ind:$ind title: $title , desc : $desc , date: $date }";
  }
}

dynamic database;

List<ToDoClass> task = [];

Future<void> insertToDoClassData(ToDoClass obj) async {
  final localDB = await database;
  await localDB.insert("ToDodata", obj.toDoMap(),
      conflictAlgorithm: ConflictAlgorithm.replace);
}

Future<List<ToDoClass>> getToDoClassData() async {
  final localDB = await database;
  List<Map<String, dynamic>> data = await localDB.query("ToDoData");
  return List.generate(
    data.length,
    (inde) => ToDoClass(
        ind: data[inde]["ind"],
        title: data[inde]["title"],
        desc: data[inde]["desc"],
        date: data[inde]["date"]),
  );
}

Future<void> updateToDoClassData(ToDoClass obj) async {
  final localDB = await database;
  await localDB
      .update("ToDodata", obj.toDoMap(), where: "ind=?", whereArgs: [obj.ind]);
}

Future<void> deleteToDoClassData(int? ind) async {
  final localDB = await database;
  await localDB.delete("ToDoData", where: "ind=?", whereArgs: [ind]);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), "Shriram1.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
        CREATE TABLE ToDoData(
          ind INTEGER PRIMARY KEY ,
          title TEXT,
          desc TEXT,
          date TEXT
        )
''');
    },
  );
  // ToDoClass data1 =
  //     ToDoClass(title: "shriram", desc: "flutter developer", date: "24 feb");
  // insertToDoClassData(data1);
  // print(await getDatabasesPath());
   task = await getToDoClassData();
  // print(task);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AdvanceToDoList(),
    );
  }
}
