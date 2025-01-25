import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Employee extends InheritedWidget {
  final String empName;
   int empId;
  final double sal;

   Employee({
    super.key,
    required this.empId,
    required this.empName,
    required this.sal,
    required super.child,
  });

  static Employee of(BuildContext contex) {
    return contex.dependOnInheritedWidgetOfExactType<Employee>()!;
  }

  @override
  bool updateShouldNotify(Employee oldWidget) {
    return empId != oldWidget.empId;
  }
}
