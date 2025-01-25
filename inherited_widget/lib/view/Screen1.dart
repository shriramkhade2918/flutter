import 'package:flutter/material.dart';
import 'package:inherited_widget/Controler/employee_controller.dart';
import 'package:inherited_widget/view/Screen2.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Demo Data"),
      ),
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
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          Employee.of(context).empId = 15;
        });
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Screen2(),
          ),
        );
      }),
    );
  }
}
