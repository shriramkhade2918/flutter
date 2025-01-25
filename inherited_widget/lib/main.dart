import 'package:flutter/material.dart';
import 'package:inherited_widget/Controler/employee_controller.dart';

import 'view/Screen1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  final String empName = "shri";
  final int empId = 55;
  final double sal = 2.5;

  @override
  Widget build(BuildContext context) {
    return Employee(
      empId: empId,
      sal: sal,
      empName: empName,
      child: MaterialApp(
        home: HomeScreen1(),
      ),

    );
  }
}
