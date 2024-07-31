import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'Slide1.dart';
// import'Project.dart';
class FortInfo{
  
}

dynamic database;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = await openDatabase(
    join(await getDatabasesPath(), "project.db"),
    version: 1,
    onCreate: (db, version) => db.execute('''
        CREAT TABLE fort(
        name TEXT PRIMARY KEY,
        image TEXT,
        info TEXT ,
        location TEXT
        ) 
        '''),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Project(),
      debugShowCheckedModeBanner: false,
    );
  }
}
