import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'main.dart';

class AdvanceToDoList extends StatefulWidget {
  const AdvanceToDoList({super.key});

  @override
  State createState() => _AdvanceToDoListState();
}

class Modelclass {
  String title;
  String desc;
  String date;
  Modelclass({required this.title, required this.desc, required this.date});
}

class _AdvanceToDoListState extends State {
  List<Modelclass> data = [
    Modelclass(
        title: "shriram khade", desc: "flutter developer", date: "24 feb 2024")
  ];
  @override
  void didChangeDependencies() async {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    task = await getToDoClassData();
  }

  // SlidableController slideControl = SlidableController(AnimationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.only(top: 45, left: 29),
              height: 70,
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Good Morning",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    "Shriram",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  )
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              height: 770,
              width: 450,
              padding: const EdgeInsets.only(
                top: 15,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Color.fromRGBO(217, 217, 217, 1),
              ),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                const SizedBox(
                  height: 30,
                  width: 200,
                  child: Text(
                    "CREATE TO DO LIST",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 720,
                    width: 420,
                    padding: const EdgeInsets.only(top: 30),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: task.length,
                              itemBuilder: ((context, index) {
                                return Slidable(
                                  // closeOnScroll: false,
                                  useTextDirection: false,

                                  endActionPane: ActionPane(
                                    // dragDismissible: false,
                                    motion: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            returnBottomsheet(
                                                false, task[index]);
                                          },
                                          child: Container(
                                              height: 90,
                                              width: 80,
                                              margin: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              child: const Icon(Icons.edit)),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            removeTask(task[index]);
                                          },
                                          child: Container(
                                              height: 90,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              child: const Icon(Icons.delete)),
                                        )
                                      ],
                                    ),
                                    children: const [Icon(Icons.delete)],
                                  ),
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        bottom: 20, right: 10, left: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  221, 130, 126, 126),
                                              blurRadius: 10,
                                              blurStyle: BlurStyle.outer)
                                        ]),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 90,
                                          width: 400,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40)),
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                          ),
                                          child: Row(
                                            children: [
                                              Column(children: [
                                                Container(
                                                  height: 70,
                                                  width: 70,
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10, left: 15),
                                                  margin:
                                                      const EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
                                                    image: const DecorationImage(
                                                        image: NetworkImage(
                                                            "https://banner2.cleanpng.com/20180317/osw/kisspng-task-computer-icons-clip-art-tasks-cliparts-5aad134a5926d3.2654729915212921063652.jpg")),
                                                    border:
                                                        Border.all(width: 1),
                                                    shape: BoxShape.circle,
                                                    // color: Colors.r,
                                                    // borderRadius: BorderRadius.circular(70)
                                                  ),
                                                ),
                                              ]),
                                              Column(
                                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(
                                                    height: 4,
                                                  ),
                                                  Text(
                                                    task[index].title,
                                                    style: const TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        height: 40,
                                                        //mobile change
                                                        width: 200,
                                                        child: Text(
                                                            task[index].desc),
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      const Icon(
                                                          Icons.circle_outlined)
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(task[index].date)
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              })),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          returnBottomsheet(true);
        }),
        child: const Icon(Icons.add),
      ),
    );
  }

  final TextEditingController _title = TextEditingController();
  final TextEditingController _desc = TextEditingController();
  final TextEditingController _date = TextEditingController();
  void submitTask() async {
    await insertToDoClassData(
      ToDoClass(title: _title.text, desc: _desc.text, date: _date.text),
    );
  }

  void clearController() {
    _title.clear();
    _desc.clear();
    _date.clear();
    popNevigator();
  }

  void popNevigator() {
    Navigator.pop(context);
    setState(() {});
  }

  void removeTask(ToDoClass obj) async {
    task.remove(obj);
    await deleteToDoClassData(obj.ind);
    //task = await getToDoClassData();
    setState(() {});
  }

  void returnBottomsheet(bool flag, [ToDoClass? obj]) {
    if (flag == false) {
      _title.text = obj!.title;
      _desc.text = obj.desc;
      _date.text = obj.date;
      setState(() {});
    }

    showModalBottomSheet(
        context: context, //context,
        builder: ((context) {
          return Container(
            //height: 363,
            //width: 400,
            padding: const EdgeInsets.only(
              top: 10,
            ),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(
                248,
                248,
                248,
                1,
              ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(30)),
            ),
            child: Column(
              children: [
                const Text(
                  "CREATE TO DO ",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Container(
                  height: 80,
                  width: 330,
                  margin: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("title"),
                      TextFormField(
                        controller: _title,
                        //controller: titleController,
                        decoration: InputDecoration(
                          hintText: "Enter Title",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(89, 57, 241, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 330,
                  margin: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Description"),
                      TextFormField(
                        controller: _desc,
                        //controller: titleController,
                        decoration: InputDecoration(
                          hintText: "Enter Description",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(89, 57, 241, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 330,
                  margin: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Date"),
                      TextFormField(
                        controller: _date,
                        //controller: titleController,
                        decoration: InputDecoration(
                          hintText: "Enter Date",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(89, 57, 241, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (flag == true) {
                        if (_date.text.isNotEmpty &&
                            _desc.text.isNotEmpty &&
                            _title.text.isNotEmpty) {
                          submitTask();
                        }
                      } else {
                        obj = ToDoClass(
                            ind: obj!.ind,
                            title: _title.text,
                            desc: _desc.text,
                            date: _date.text);
                        await updateToDoClassData(obj!);
                      }

                      task = await getToDoClassData();

                      clearController();

                      // setState(() {});
                    },
                    child: const Text("submit"))
              ],
            ),
            // ),
          );
        }));
  }
}
