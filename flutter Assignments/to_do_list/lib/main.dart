import 'package:flutter/material.dart';
import 'todoList.dart';

void main() => runApp(const MyApp());

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
// // import 'package:sqflite/sqflite.dart';
// // import 'package:path/path.dart';
// // //import 'package:sqlfite';

// // dynamic database;

// // class toDolist {
// //   final String title;
// //   final String desc;
// //   final String date;
// //   toDolist({
// //     required this.title,
// //     required this.desc,
// //     required this.date,
// //   });
// //   Map<String, dynamic> returnmap() {
// //     return {'title': title, 'desc': desc, 'date': date};
// //   }
// // }

// // Future<void> inserTodoListdata(toDolist obj) async {
// //   final localDB = await database;
// //   localDB.insert('todolist', obj.returnmap(),
// //       conflictAlgorithm: ConflictAlgorithm.replace);
// // }

// // Future<List<Map<String, dynamic>>> getETodolistData() async {
// //   final localDB = await database;
// //   List<Map<String, dynamic>> mapentry = await localDB.query("todolist");
// //   return mapentry;
// // }

// // Future<void> deletetododata(toDolist obj) async {
// //   final localDB = await database;

// //   await localDB.delete(
// //     'todolist',
// //     where: "title=?",
// //     whereArgs: [obj.title],
// //   );
// // }

// // void main() async {
// //   runApp(const MyApp());
// //   database = openDatabase(
// //     join(await getDatabasesPath(), "todolist.db"),
// //     version: 1,
// //     onCreate: (db, version) {
// //       db.execute('''CREATE TABLE todolist(
// //         tilte TEXT PRIMARY KEY,
// //         desc TEXT,
// //         date TEXT,
// //       ) ''');
// //       // conflictAlgorithm:
// //       // ConflictAlgorithm.replace;
// //     },
// //   );
// //   toDolist data1 = toDolist(title: "shri", desc: "flutter", date: "hbfkhs");
// //   await inserTodoListdata(data1);
// //   toDolist data2 = toDolist(title: "keshav", desc: "flutter", date: "hbfkhs");
// //   await inserTodoListdata(data2);

// //   List<Map<String, dynamic>> retVal = await getETodolistData();

// //   for (int i = 0; i < retVal.length; i++) {
// //     print(retVal[i]);

// //   }
// // }

// // class toDoList extends StatefulWidget {
// //   toDoList({super.key});

// //   @override
// //   State createState() => _toDoListState();
// // }

// // class _toDoListState extends State {
// //   String _title = "";
// //   String _description = "";
// //   String _date = "";
// //   List<Map> task = [
// //     // {
// //     //   "title": "Lorem Ipsum is simply setting industry",
// //     //   "description":
// //     //       "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
// //     //   "date": "21 feb 2014"
// //     // },
// //   ];

// //   List color = const [
// //     Color.fromARGB(255, 226, 208, 213),
// //     Color.fromARGB(255, 216, 176, 235),
// //     Color.fromARGB(255, 193, 248, 238),
// //     Color.fromARGB(255, 224, 221, 193)
// //   ];
// //   Color ContainerColor(int index) {
// //     int val = (index + 1) % 4;
// //     return color[val];
// //   }

// //   bool submitflag = false;
// //   bool flag = false;
// //   Widget bottumSheet() {
// //     if (flag == true) {
// //       return SizedBox(
// //         height: 500,
// //         width: 400,
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.start,
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             const SizedBox(
// //               height: 10,
// //             ),
// //             const Text(
// //               "Title:",
// //               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
// //               textAlign: TextAlign.left,
// //             ),
// //             const SizedBox(
// //               height: 10,
// //             ),
// //             TextField(
// //               decoration: InputDecoration(
// //                 border: OutlineInputBorder(
// //                   borderRadius: BorderRadius.circular(20),
// //                 ),
// //                 fillColor: Colors.amber,
// //                 hintText: "Enter Title",
// //               ),
// //               onChanged: (value) {
// //                 //print(value);
// //               },
// //               onSubmitted: (value) {
// //                 // print(value);
// //                 _title = value;
// //               },
// //             ),
// //             const SizedBox(
// //               height: 10,
// //             ),
// //             const Text(
// //               "Description:",
// //               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
// //               textAlign: TextAlign.left,
// //             ),
// //             const SizedBox(
// //               height: 10,
// //             ),
// //             TextField(
// //               decoration: InputDecoration(
// //                 border: OutlineInputBorder(
// //                   borderRadius: BorderRadius.circular(20),
// //                 ),
// //                 fillColor: Colors.amber,
// //                 hintText: "Enter Description",
// //               ),
// //               onChanged: (value) {
// //                 // print(value);
// //               },
// //               onSubmitted: (value) {
// //                 // print(value);
// //                 _description = value;
// //               },
// //             ),
// //             const SizedBox(
// //               height: 10,
// //             ),
// //             const Text(
// //               "Date:",
// //               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
// //               textAlign: TextAlign.left,
// //             ),
// //             const SizedBox(
// //               height: 10,
// //             ),
// //             TextField(
// //               decoration: InputDecoration(
// //                 border: OutlineInputBorder(
// //                   borderRadius: BorderRadius.circular(20),
// //                 ),
// //                 fillColor: Colors.amber,
// //                 hintText: "Enter Date",
// //               ),
// //               onChanged: (value) {
// //                 // print(value);
// //               },
// //               onSubmitted: (value) {
// //                 //print(value);
// //                 _date = value;
// //                 submitflag = true;
// //               },
// //             ),
// //             const SizedBox(
// //               height: 10,
// //             ),
// //           ],
// //         ),
// //       );
// //     } else {
// //       return const SizedBox();
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text(" To Do List "),
// //       ),
// //       body: ListView.builder(
// //         shrinkWrap: true,
// //         itemCount: task.length,
// //         itemBuilder: (context, index) {
// //           return Column(
// //             crossAxisAlignment: CrossAxisAlignment.center,
// //             children: [
// //               const SizedBox(
// //                 height: 20,
// //               ),
// //               Container(
// //                   width: 380,
// //                   height: 200,
// //                   decoration: BoxDecoration(
// //                       color: ContainerColor(index),
// //                       borderRadius: BorderRadius.circular(10),
// //                       boxShadow: const [
// //                         BoxShadow(
// //                             color: Color.fromRGBO(237, 205, 205, 1),
// //                             offset: Offset(0, 10),
// //                             blurRadius: 20)
// //                       ]),
// //                   child: Column(children: [
// //                     Row(children: [
// //                       const SizedBox(
// //                         width: 10,
// //                       ),
// //                       Column(
// //                         children: [
// //                           Container(
// //                             padding: const EdgeInsets.all(20),
// //                             height: 80,
// //                             width: 80,
// //                             margin: const EdgeInsets.only(top: 40, left: 1),
// //                             decoration: BoxDecoration(
// //                                 color: const Color.fromRGBO(255, 255, 255, 1),
// //                                 borderRadius: BorderRadius.circular(100)),
// //                             child: Image.asset(
// //                               "Images/images.jpg",
// //                             ),
// //                           ),
// //                           const SizedBox(
// //                             height: 5,
// //                           ),
// //                         ],
// //                       ),
// //                       Column(
// //                         children: [
// //                           Container(
// //                               padding: const EdgeInsets.only(top: 20, left: 10),
// //                               child: Text(
// //                                 "${task[index]["title"]}",
// //                                 style: const TextStyle(
// //                                     fontWeight: FontWeight.w600, fontSize: 15),
// //                               )),
// //                           Container(
// //                               height: 100,
// //                               width: 240,
// //                               padding: const EdgeInsets.only(top: 10, left: 10),
// //                               child: Text(
// //                                 "${task[index]["description"]} ",
// //                                 style: const TextStyle(
// //                                     fontWeight: FontWeight.w500, fontSize: 12),
// //                               )),
// //                         ],
// //                       ),
// //                     ]),
// //                     Row(
// //                       children: [
// //                         const SizedBox(
// //                           width: 15,
// //                         ),
// //                         Text("${task[index]["date"]}"),
// //                         const Spacer(),
// //                         IconButton(
// //                           onPressed: () {},
// //                           icon: const Icon(
// //                             Icons.edit_outlined,
// //                             color: Color.fromARGB(255, 69, 195, 163),
// //                           ),
// //                         ),
// //                         IconButton(
// //                           onPressed: () {
// //                             setState(() {
// //                               task.remove(0);
// //                             });
// //                           },
// //                           icon: const Icon(
// //                             Icons.delete_outline,
// //                             color: Color.fromARGB(255, 69, 195, 163),
// //                           ),
// //                         ),
// //                         const SizedBox(
// //                           width: 10,
// //                         )
// //                       ],
// //                     )
// //                   ])),
// //             ],
// //           );
// //         },
// //       ),
// //       bottomSheet: bottumSheet(),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {
// //           flag = !flag;
// //           if (submitflag == true) {
// //             Map taskinfo = {
// //               "title": _title,
// //               "description": _description,
// //               "date": _date
// //             };
// //             task.add(taskinfo);

// //             submitflag = false;
// //           }
// //           setState(() {});
// //         },
// //         child: const Icon(
// //           Icons.add,
// //         ),
// //       ),
// //     );
// //   }
// // }
