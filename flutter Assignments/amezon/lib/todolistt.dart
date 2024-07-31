import 'package:flutter/material.dart';
import 'main.dart';
import 'package:intl/intl.dart';

class todoList extends StatefulWidget {
  const todoList({super.key});

  @override
  State createState() => _todoListState();
}
// class modelClass {
//   String title;
//   String desc;
//   String date;
//   modelClass({required this.title, required this.desc, required this.date});
// }

// List<modelClass> task = [
//   // modelClass(
//   //     title: "shriram khade", desc: "flutter developer", date: "24 feb 2024")
// ];

final TextEditingController _title = TextEditingController();
final TextEditingController _desc = TextEditingController();
final TextEditingController _date = TextEditingController();
GlobalKey<FormFieldState> _datekey = GlobalKey<FormFieldState>();

//List<ToDoTask> task = data;

class _todoListState extends State {
  // _todoListState(){
  //   task=
  // }
  // void initState() {
  //   super.initState();
  //   addData();
  //   // task = await getOrderData();
  // }
  void initState() {
    super.initState();
    // print("==========================================");
    //addData();
    setState(() {});
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();

    task = await getOrderData();
    // print("----------------------------------------------------------");

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // print("1111111111111111111111111111111111111111111");
    addData();
    // print(task);
    //print(data);
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do List"),
      ),
      body: ListView.builder(
        itemCount: task.length,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 117, 105, 105), blurRadius: 40)
                ]),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 5, left: 10),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(task[index].title),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(task[index].desc),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Text(task[index].date),
                    const Spacer(),
                    GestureDetector(
                        onTap: () {
                          showBottumShet(false, task[index]);
                        },
                        child: const Icon(Icons.edit)),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                        onTap: () {
                          removetask(task[index]);
                        },
                        child: const Icon(Icons.delete)),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottumShet(true);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void submitButton() async {
    await insertData(
        ToDoTask(title: _title.text, desc: _desc.text, date: _date.text));
    addData();
  }

  //   task.add(
  //       modelClass(title: _title.text, desc: _desc.text, date: _date.text));
  //   // clearcontroller();
  // }
  void update(ToDoTask obj) async {
    obj = ToDoTask(
        orderNo: obj.orderNo,
        title: _title.text,
        desc: _desc.text,
        date: _date.text);
    await updateDate(obj);
    task = await getOrderData();
    // addData();
  }

  void clearcontroller() {
    addData();
    _title.clear();
    _desc.clear();
    _date.clear();
    navigatorpop();
  }

  void navigatorpop() async {
    Navigator.pop(context);
    //print(await getOrderData());

    setState(() {});
  }

  void removetask(ToDoTask obj) async {
    deletData(obj.orderNo);
    task.remove(obj);
    //print(await getOrderData());

    setState(() {});
  }

  void showBottumShet(bool flag, [ToDoTask? obj]) {
    if (flag == false) {
      _title.text = obj!.title;
      _desc.text = obj.desc;
      _date.text = obj.date;
    }
    showModalBottomSheet(
      context:
          context, // CalendarDatePicker(initialDate: , firstDate: firstDate, lastDate: lastDate, onDateChanged: onDateChanged),
      builder: (context) {
        return Column(
          children: [
            TextField(
              controller: _title,
              decoration: const InputDecoration(
                hintText: "desc",
              ),
            ),
            TextField(
              controller: _desc,
              decoration: const InputDecoration(
                hintText: "desc",
              ),
            ),
            // TextField(
            //   controller: _date,
            //   decoration: const InputDecoration(
            //     hintText: "date",
            //   ),
            // ),
            TextFormField(
              key: _datekey,
              controller: _date,
              onTap: () async {
                DateTime? picdate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2022),
                  lastDate: DateTime(2025),
                );

                String formattedDate =
                    DateFormat('yyyy-MM-dd').format(picdate!);

                setState(() {
                  _date.text = formattedDate;
                });
              },
              readOnly: true,
              decoration: const InputDecoration(
                  hintText: "Enter the Date",
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(89, 57, 241, 1)),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please select the date";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  if (flag == true) {
                    if (_title.text.isNotEmpty &&
                        _desc.text.isNotEmpty &&
                        _date.text.isNotEmpty) {
                      submitButton();
                      task = await getOrderData();
                    }
                  } else {
                    update(obj!);
                    task = await getOrderData();
                    //setState(() {});
                  }
                  clearcontroller();
                },
                child: const Text("submit")),
          ],
        );
      },
    );
  }
}
