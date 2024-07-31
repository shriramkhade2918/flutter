import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;

class Employee {
  int empId;
  String empName;
  String city;
  double empSal;

  Employee(
      {required this.empId,
      required this.empName,
      required this.city,
      required this.empSal});
  Map<String, dynamic> employeeMap() {
    return {"empId": empId, "empName": empName, "city": city, "empSal": empSal};
  }

  @override
  String toString() {
    return "{empId:$empId, empName:$empName ,city: $city , empSal:$empSal}";
  }
}

Future<void> insertEmployeeData(Employee obj) async {
  final localDB = await database;
  await localDB.insert("Employee", obj.employeeMap(),
      conflictAlgorithm: ConflictAlgorithm.replace);
}

Future<List<Employee>> getEmployeeData() async {
  final localDB = await database;

  List<Map<String, dynamic>> data = await localDB.query("Employee");

  return List.generate(
      data.length,
      (index) => Employee(
          empId: data[index]['empId'],
          empName: data[index]['empName'],
          city: data[index]['city'],
          empSal: data[index]['empSal']));
}

Future<void> deleteEmployeeData(int id) async {
  final localDB = await database;
  localDB.delete(
    'Employee',
    where: 'empId = ?',
    whereArgs: [id],
  );
}

Future<void> updateEmployeeData(Employee obj) async {
  final localDB = await database;
  await localDB.update(
    "Employee",
    obj.employeeMap(),
    where: 'empId=?',
    whereArgs: [obj.empId],
  );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), "EmployeeDB.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute('''
        CREATE TABLE Employee(
          empId INT PRIMARY KEY,
          empName TEXT,
          city TEXT,
          empSal REAL
        )
''');
    },
  );

  Employee data1 =
      Employee(empId: 1, empName: "rushi", city: "nagar", empSal: 1.2);
  await insertEmployeeData(data1);
  print(await getEmployeeData());
  data1 = Employee(
      empId: data1.empId, empName: data1.empName, city: "pune", empSal: 2.5);
  await updateEmployeeData(data1);
  print(await getEmployeeData());
  await deleteEmployeeData(data1.empId);
  print(await getEmployeeData());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// class Zomato {
//   int? orderNo;
//    String custName;
//    String hotelName;
//    String food;
//    double bill;

//   Zomato({
//     this.orderNo,
//     required this.custName,
//     required this.hotelName,
//     required this.food,
//     required this.bill,
//   });

//   Map<String, dynamic> zomatoMap() {
//     return {
//       'orderNo':orderNo,
//       'custName': custName,
//       'hotelName': hotelName,
//       'food': food,
//       'bill': bill,
//     };
//   }

//   @override
//   String toString() {
//     return '{orderNo:$orderNo,custName:$custName,hotelName:$hotelName,food:$food,bill:$bill}';
//   }
// }

// Future<void> insertOrderData(Zomato obj) async {
//   final localDB = await database;

//   await localDB.insert(
//     "Order",
//     obj.zomatoMap(),
//     conflictAlgorithm: ConflictAlgorithm.replace,
//   );
// }

// Future<List<Zomato>> getOrderData() async {
//   final localDB = await database;

//   List<Map<String, dynamic>> orderMap = await localDB.query("Order");

//   return List.generate(orderMap.length, (i) {
//     return Zomato(
//       orderNo: orderMap[i]['orderNo'],
//       custName: orderMap[i]['custName'],
//       hotelName: orderMap[i]['hotelName'],
//       food: orderMap[i]['food'],
//       bill: orderMap[i]['bill'],
//     );
//   });
// }

// dynamic database;
// void main() async {
//   //runApp(const MainApp());

//   WidgetsFlutterBinding.ensureInitialized();
//   //   WidgetsFlutterBinding.ensureInitialized();
// //   database = openDatabase(
// //     join(await getDatabasesPath(), "EmployeeDB.db"),
// //     version: 1,
// //     onCreate: (db, version) {
// //       db.execute('''
// //         CREATE TABLE Employee(
// //           empId INT PRIMARY KEY,
// //           empName TEXT,
// //           city TEXT,
// //           empSal REAL
// //         )
// // ''');
// //     },
// //   );

//   database = openDatabase(
//     join(await getDatabasesPath(), "Blink5.db"),
//     version: 1,
//     onCreate: (db, version) {
//         db.execute('''
//           CREATE TABLE Order(
//           orderNo INT PRIMARY KEY,
//           custName TEXT,
//           hotelName TEXT,
//           food TEXT,
//           bill REAL,
//         )
//       ''');
//     },
//   );

//   //Insert
//   Zomato order1 = Zomato(
//     custName: "Ashish",
//     hotelName: "Ganesh Bhel",
//     food: "Bhel, Ragda Patice",
//     bill: 350.50,
//   );

//   await insertOrderData(order1);

//   print(await getOrderData());

// }
