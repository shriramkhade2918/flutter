import 'package:crude_operation/Screens/insertDataScreen.dart';
import 'package:crude_operation/bloc/bloc/employee_bloc.dart';
import 'package:crude_operation/bloc/bloc/employee_event.dart';
import 'package:crude_operation/bloc/bloc/employee_state.dart';
import 'package:crude_operation/model%20Class/EmployeeModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:math';

class EmployeeListScreen extends StatefulWidget {
  const EmployeeListScreen({super.key});

  @override
  State<EmployeeListScreen> createState() => _EmployeeListScreenState();
}

class _EmployeeListScreenState extends State<EmployeeListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "CRUD Operation",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 10, 235, 224),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottumSheet();
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => const InsertData(),
          //   ),
          // );
        },
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<EmployeeBloc, EmployeeState>(
        builder: (context, state) {
          if (state is EmployeeInitial) {
            return const Center(child: Text('No Employee'));
          } else if (state is EmployeeLoaded) {
            return ListView.builder(
              itemCount: state.employeeInfo.length,
              itemBuilder: (context, index) {
                final employee = state.employeeInfo[index];
                return Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 198, 252, 22)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Name :  ${employee.empName!}",
                            style: const TextStyle(fontSize: 25),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => InsertData(
                                  //       employee: employee,
                                  //     ),
                                  //   ),
                                  // );
                                  showBottumSheet(employee);
                                },
                                child: const Icon(
                                  Icons.edit,
                                  color: Colors.green,
                                  size: 35,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  BlocProvider.of<EmployeeBloc>(context)
                                      .add(DeleteEmployee(employee.empId!));
                                },
                                child: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 35,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              )
                            ],
                          )
                        ],
                      ),
                      Text(
                        "Id : ${employee.empId!}",
                        style: const TextStyle(fontSize: 25),
                      ),
                      Text(
                        "Company Name : ${employee.companyName!}",
                        style: const TextStyle(fontSize: 25),
                      ),
                      Text(
                        "Location : ${employee.location!}",
                        style: const TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                );
              },
            );
          }
          return Container();
        },
      ),
    );
  }

  TextEditingController employeeNameController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  TextEditingController companyLocationController = TextEditingController();

  void showBottumSheet([Employee? employee]) {
    if (employee != null) {
      employeeNameController.text = employee.empName!;
      companyNameController.text = employee.companyName!;
      companyLocationController.text = employee.location!;
    }

    showModalBottomSheet(
      scrollControlDisabledMaxHeightRatio: .8,
      useSafeArea: true,
      // isScrollControlled:,
      context: context,
      builder: (context) {
        return Container(
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
                decoration:
                    const InputDecoration(labelText: "Company location"),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CupertinoButton(
                    onPressed: () {
                      if (employee == null) {
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
                        addEditData(employee);
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
        );
      },
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
    Navigator.pop(context);
  }
}




// import 'package:crude_operation/model%20Class/EmployeeModel.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// Employee employee = Employee(
//     empName: "Shri", empId: '12', companyName: "Purezza", location: "Gujarat");
// List<Employee> data = [];

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           "CRUD Operation",
//           style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: const Color.fromARGB(255, 10, 235, 224),
//       ),
//       body: ListView.builder(
//           itemCount: data.length,
//           itemBuilder: (context, index) {
//             return Container(
//               padding: const EdgeInsets.all(20),
//               margin: const EdgeInsets.all(15),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: const Color.fromARGB(255, 198, 252, 22)),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Text(
//                         "Name :  ${data[index].empName}",
//                         style: const TextStyle(fontSize: 25),
//                       ),
//                       const Spacer(),
//                       Row(
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               showBottumSheet(false, index);
//                               setState(() {});
//                             },
//                             child: const Icon(
//                               Icons.edit,
//                               color: Colors.green,
//                               size: 35,
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 5,
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               removeData(index);
//                             },
//                             child: const Icon(
//                               Icons.delete,
//                               color: Colors.red,
//                               size: 35,
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 5,
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                   Text(
//                     "Id : ${data[index].empId}",
//                     style: const TextStyle(fontSize: 25),
//                   ),
//                   Text(
//                     "Company Nmae : ${data[index].companyName}",
//                     style: const TextStyle(fontSize: 25),
//                   ),
//                   Text(
//                     "Location : ${data[index].location}",
//                     style: const TextStyle(fontSize: 25),
//                   ),
//                 ],
//               ),
//             );
//           }),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           showBottumSheet(true);
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }

//   TextEditingController employeeNameController = TextEditingController();
//   TextEditingController employeeIdController = TextEditingController();
//   TextEditingController companyNameController = TextEditingController();
//   TextEditingController companyLocationController = TextEditingController();

//   void showBottumSheet(bool value, [int? ind]) {
//     if (!value) {
//       employeeNameController.text = data[ind!].empName!;
//       employeeIdController.text = data[ind].empId.toString();
//       companyNameController.text = data[ind].companyName!;
//       companyLocationController.text = data[ind].location!;
//     }
//     showModalBottomSheet(
//       scrollControlDisabledMaxHeightRatio: .8,
//       useSafeArea: true,
//       // isScrollControlled:,
//       context: context,
//       builder: (context) {
//         return Container(
//           padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextField(
//                 controller: employeeNameController,
//                 decoration: const InputDecoration(labelText: " Employee Name"),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               TextField(
//                 controller: employeeIdController,
//                 decoration: const InputDecoration(labelText: "Employee Id"),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               TextField(
//                 controller: companyNameController,
//                 decoration: const InputDecoration(labelText: "Company Name"),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               TextField(
//                 controller: companyLocationController,
//                 decoration:
//                     const InputDecoration(labelText: "Company location"),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   CupertinoButton(
//                     onPressed: () {
//                       if (value) {
//                         addData();
//                       } else {
//                         addEditData(ind!);
//                       }
//                     },
//                     color: const Color.fromARGB(255, 149, 222, 76),
//                     child: const Text("Submit"),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }

//   void removeData(int index) {
//     data.removeAt(index);
//     setState(() {});
//   }

//   void addData() {
//     if (employeeNameController.text.isNotEmpty &&
//         employeeIdController.text.isNotEmpty &&
//         companyLocationController.text.isNotEmpty &&
//         companyNameController.text.isNotEmpty) {
//       String name = employeeNameController.text.trim();
//       String id = employeeIdController.text.trim();
//       String cName = companyNameController.text.trim();
//       String loca = companyLocationController.text.trim();
//       data.add(Employee(
//           empName: name, empId: id, companyName: cName, location: loca));
//     }
//     clearControler();
//     // setState(() {});
//   }

//   void addEditData(int ind) {
//     Map<String, dynamic> info = {
//       'empName': employeeNameController.text.trim(),
//       'empId': int.parse(employeeIdController.text.trim()),
//       'companyName': companyNameController.text.trim(),
//       'location': companyLocationController.text.trim(),
//     };

//     data[ind].editInfo(info);
//     clearControler();
//   }

//   clearControler() {
//     employeeNameController.clear();
//     employeeIdController.clear();
//     companyNameController.clear();
//     companyLocationController.clear();
//     Navigator.pop(context);
//     setState(() {});
//   }
// }
