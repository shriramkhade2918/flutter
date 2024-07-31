import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'todolistt.dart';

class ToDoTask {
  int? orderNo;
  String title;
  String desc;
  String date;

  ToDoTask({
    this.orderNo,
    required this.title,
    required this.desc,
    required this.date,
  });

  Map<String, dynamic> ToDoMap() {
    return {'title': title, 'desc': desc, 'date': date};
  }

  @override
  String toString() {
    return '{orderNo:$orderNo, title: $title , desc:$desc , date:$date }';
  }
}

dynamic database;

List<ToDoTask> task = [];
Future<void> insertData(ToDoTask obj) async {
  // print("///////////////////////////////////////");
  final localDB = await database;
  await localDB.insert("ToDoTable", obj.ToDoMap(),
      conflictAlgorithm: ConflictAlgorithm.replace);
}

void addData() async {
  // print("******************************************************************");
  task = await getOrderData();
}

Future<List<ToDoTask>> getOrderData() async {
  final localDB = await database;
  // print(".,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,");
  List<Map<String, dynamic>> data = await localDB.query('ToDoTable');

  return List.generate(data.length, (i) {
    return ToDoTask(
      orderNo: data[i]['orderNo'],
      title: data[i]['title'],
      desc: data[i]['desc'],
      date: data[i]['date'],
    );
  });
}

Future<void> deletData(int? data) async {
  final localDB = await database;
  await localDB.delete(
    "ToDoTable",
    where: "orderNo=?",
    whereArgs: [data],
  );
}

Future<void> updateDate(ToDoTask obj) async {
  // print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
  final localDb = await database;
  await localDb.update(
    "ToDoTable",
    obj.ToDoMap(),
    where: "orderNo=?",
    whereArgs: [obj.orderNo],
  );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), "ToDoApp3.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
      CREATE TABLE ToDoTable(
        orderNo INTEGER PRIMARY KEY ,
        title TEXT,
        desc TEXT,
        date TEXT
      )
  ''');
    },
  );
  // print(await getOrderData());
  // print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
  task = await getOrderData();
  // print(await task);
  runApp(const MyApp());
  //Insert
//   ToDoTask obj1 = ToDoTask(
//       // orderNo: 1,
//       title: "shri",
//       desc: "maratha",
//       date: '24 feb',
//      );
// //   await insertData(obj1);
//   ToDoTask obj2 = ToDoTask(
//     // orderNo: 1,
//     title: "shri",
//     desc: "maratha",
//     date: '24 feb',
//   );
//   await insertData(obj2);

//   // ToDoTask obj = data[1];
//   // print(await getOrderData());
//   // await deletData(1);
//   // print(await getOrderData());
//   obj2 = ToDoTask(
//     // orderNo: 1,
//     title: "shri",
//     desc: "flutter dev",
//     date: '25 feb',
//   );
  // updateDate(obj2k);
  // print(await getOrderData());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: todoList(),
      debugShowCheckedModeBanner: false,
    );
  }
}
// 