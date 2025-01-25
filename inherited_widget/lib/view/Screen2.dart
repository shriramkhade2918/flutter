import 'package:flutter/material.dart';

import '../Controler/employee_controller.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("empName :${Employee.of(context).empName}"),
          const SizedBox(
            height: 20,
          ),
           Text("empName :${Employee.of(context).empId}"),
          const SizedBox(
            height: 20,
          ),
           Text("empName :${Employee.of(context).sal}"),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}