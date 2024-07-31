import 'package:flutter/material.dart';

class todoList extends StatefulWidget {
  const todoList({super.key});

  @override
  State createState() => _todoListState();
}

class modelClass {
  String title;
  String desc;
  String date;
  modelClass({required this.title, required this.desc, required this.date});
}

List<modelClass> task = [
  // modelClass(
  //     title: "shriram khade", desc: "flutter developer", date: "24 feb 2024")
];

final TextEditingController _title = TextEditingController();
final TextEditingController _desc = TextEditingController();
final TextEditingController _date = TextEditingController();

class _todoListState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do List"),
      ),
      body: ListView.builder(
        itemCount: task.length,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            margin: EdgeInsets.all(10),
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
                      margin: EdgeInsets.only(top: 5, left: 10),
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

  void submitButton() {
    task.add(
        modelClass(title: _title.text, desc: _desc.text, date: _date.text));
    // clearcontroller();
  }

  void clearcontroller() {
    _title.clear();
    _desc.clear();
    _date.clear();
    navigatorpop();
  }

  void navigatorpop() {
    Navigator.pop(context);
    setState(() {});
  }

  void removetask(modelClass obj) {
    task.remove(obj);
    setState(() {});
  }

  void showBottumShet(bool flag, [modelClass? obj]) {
    if (flag == false) {
      _title.text = obj!.title;
      _desc.text = obj.desc;
      _date.text = obj.date;
    }
    showModalBottomSheet(
      context:
          context, // CalendarDatePicker(initialDate: , firstDate: firstDate, lastDate: lastDate, onDateChanged: onDateChanged),
      builder: (context) {
        return Container(
          child: Column(
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
              TextField(
                controller: _date,
                decoration: const InputDecoration(
                  hintText: "date",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (flag == true) {
                      if (_title.text.isNotEmpty &&
                          _desc.text.isNotEmpty &&
                          _date.text.isNotEmpty) {
                        submitButton();
                      }
                    } else {
                      obj!.title = _title.text;
                      obj.desc = _desc.text;
                      obj.date = _date.text;
                    }
                    clearcontroller();
                  },
                  child: const Text("submit")),
            ],
          ),
        );
      },
    );
  }
}
