import 'dart:math';

import 'package:crude_operation/bloc/bloc/employee_bloc.dart';
import 'package:crude_operation/bloc/bloc/employee_event.dart';
import 'package:crude_operation/model%20Class/EmployeeModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InsertData extends StatefulWidget {
  final Employee? employee;
  const InsertData({super.key, this.employee});

  @override
  State<InsertData> createState() => _InsertDataState();
}

class _InsertDataState extends State<InsertData> {
  TextEditingController employeeNameController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  TextEditingController companyLocationController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.employee != null) {
      employeeNameController.text = widget.employee!.empName!;
      companyNameController.text = widget.employee!.companyName!;
      companyLocationController.text = widget.employee!.location!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: employeeNameController,
              decoration: const InputDecoration(labelText: " Employee Name"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: companyNameController,
              decoration: const InputDecoration(labelText: "Company Name"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: companyLocationController,
              decoration: const InputDecoration(labelText: "Company location"),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  onPressed: () {
                    if (widget.employee == null) {
                      final newEmployee = Employee(
                        empId: Random().nextInt(1000).toString(),
                        empName: employeeNameController.text.trim(),
                        companyName: companyNameController.text.trim(),
                        location: companyLocationController.text.trim(),
                      );
                      BlocProvider.of<EmployeeBloc>(context)
                          .add(AddEmployee(newEmployee));
                      clearControler();
                    } else {
                      addEditData(widget.employee!);
                    }
                    // Navigator.of(context).pop();
                  },
                  color: const Color.fromARGB(255, 149, 222, 76),
                  child: const Text("Submit"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void addEditData(Employee employee) {
    String name = employeeNameController.text.trim();
    String cName = companyNameController.text.trim();
    String loca = companyLocationController.text.trim();

    BlocProvider.of<EmployeeBloc>(context)
        .add(UpdateEmployee(employee.empId!, name, cName, loca));
    clearControler();
  }

  clearControler() {
    employeeNameController.clear();
    companyNameController.clear();
    companyLocationController.clear();
    Navigator.of(context).pop();
  }
}
