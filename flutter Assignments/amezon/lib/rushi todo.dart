import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Todolist extends StatefulWidget {
  const Todolist({super.key});

  @override
  State createState() {
    return _TodolistState();
  }
}

class ModelClass {
  String title;
  String dis;
  String date;

  ModelClass(this.title, this.dis, this.date);
}

class _TodolistState extends State {
  List<ModelClass> task = [
    ModelClass(
        "Lorem Ipsum is simply dummy industry.",
        "Simply dummy text of the printing and type setting industry. Lorem Ipsum Lorem Ipsum Lorem. . ",
        "2023-02,12")
  ];

  List<int> stask = [];

  IconData? showIcon(int index) {
    print(stask);
    if (stask.contains(index)) {
      return Icons.task_alt_rounded;
      // return Icons.circle_outlined;
    } else {
      // return Icons.task_alt_rounded;
      return Icons.circle_outlined;
    }
  }

  int flag = -1;

  void submittask(int index) {
    print(stask);
    if (!stask.contains(index)) {
      stask.add(index);
    } else {
      stask.remove(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(111, 81, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
            // padding: EdgeInsets.all(11),
            width: 200,
            // height: 100,
            child: Column(
              children: [
                Text(
                  "Good morning",
                  style: GoogleFonts.quicksand(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(255, 255, 255, 1)),
                ),
                Text(
                  "Rushikesh",
                  style: GoogleFonts.quicksand(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(255, 255, 255, 1)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 39,
          ),
          Expanded(
            child: Container(
              width: 420,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "CREATE TO DO LIST",
                    style: GoogleFonts.quicksand(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(0, 0, 0, 1)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 18),
                      width: 420,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: ListView.builder(
                        itemCount: task.length,
                        itemBuilder: (context, index) => Slidable(
                          // direction: Axis.horizontal,
                          closeOnScroll: true,
                          endActionPane: ActionPane(
                            extentRatio: 0.18,
                            motion: const DrawerMotion(),
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        edittask(task[index]);
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(89, 57, 241, 1),
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.edit,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        removecard(task[index]);
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(89, 57, 241, 1),
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.delete,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ), //
                            ],
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(9),
                            // height: 90,
                            width: 360,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                border: Border.all(width: 1),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.08),
                                      offset: Offset(10, 10),
                                      blurRadius: 9)
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: Row(
                                children: [
                                  Container(
                                    height: 52,
                                    width: 52,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://static.vecteezy.com/system/resources/thumbnails/003/529/153/small/business-to-do-list-flat-icon-modern-style-free-vector.jpg")),
                                        color:
                                            Color.fromRGBO(217, 217, 217, 1)),
                                  ),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 226,
                                        child: Text(
                                          "${task[index].title} ",
                                          style: GoogleFonts.inter(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      SizedBox(
                                        width: 225,
                                        child: Text(
                                          "${task[index].dis}",
                                          style: GoogleFonts.inter(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      SizedBox(
                                        width: 225,
                                        child: Text(
                                          "${task[index].date}",
                                          style: GoogleFonts.inter(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 50,
                                        width: 10,
                                        child: GestureDetector(
                                          onTap: () {
                                            submittask(index);
                                            setState(() {});
                                          },
                                          child: SizedBox(
                                            height: 100,
                                            width: 100,
                                            child: Icon(
                                              showIcon(index),
                                              // (flag)
                                              //     ? Icons.circle_outlined
                                              //     : Icons.task_alt_rounded,
                                              color: Colors.green,
                                              // color: Colors.green,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(89, 57, 241, 1),
        onPressed: () {
          showsheet(true);
          // setState(() {});
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }

  void edittask(ModelClass obj) {
    _title.text = obj.title;
    _dis.text = obj.dis;
    _date.text = obj.date;
    showsheet(false, obj);
    setState(() {});
  }

  void removecard(ModelClass obj) {
    task.remove(obj);
    setState(() {});
  }

  // Controllers
  final TextEditingController _title = TextEditingController();
  final TextEditingController _dis = TextEditingController();
  final TextEditingController _date = TextEditingController();

  //Keys
  GlobalKey<FormFieldState> _titlekey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> _disKey = GlobalKey<FormFieldState>();

  void checkfield() {
    bool val1 = _titlekey.currentState!.validate();
    bool val2 = _disKey.currentState!.validate();
    bool val3 = _datekey.currentState!.validate();
  }

  void addtask(flag, [ModelClass? obj]) {
    if (_title.text.isNotEmpty &&
        _dis.text.isNotEmpty &&
        _date.text.isNotEmpty) {
      if (flag == true) {
        task.add(ModelClass(
            _title.text.trim(), _dis.text.trim(), _date.text.trim()));
      } else {
        obj!.title = _title.text.trim();
        obj.dis = _dis.text.trim();
        obj.date = _date.text.trim();
      }
      popnavigator();
    }
  }

  void popnavigator() {
    _title.clear();
    _dis.clear();
    _date.clear();

    Navigator.pop(context);
  }

  void showsheet(bool flag, [ModelClass? obj]) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 15,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Create To-Do ",
                style: GoogleFonts.quicksand(
                    fontSize: 22, fontWeight: FontWeight.w800),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Title",
                    style: GoogleFonts.quicksand(
                      fontSize: 12,
                      color: Color.fromRGBO(89, 57, 241, 1),
                    ),
                  ),
                  TextFormField(
                    controller: _title,
                    key: _titlekey,
                    decoration: InputDecoration(
                        hintText: "Enter the Title",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(89, 57, 241, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter the Title";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Discription",
                    style: GoogleFonts.quicksand(
                      fontSize: 12,
                      color: Color.fromRGBO(89, 57, 241, 1),
                    ),
                  ),
                  TextFormField(
                      controller: _dis,
                      key: _disKey,
                      decoration: InputDecoration(
                          hintText: "Enter the Discription",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(89, 57, 241, 1)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter the discription";
                        } else {
                          return null;
                        }
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Date",
                    style: GoogleFonts.quicksand(
                      fontSize: 12,
                      color: Color.fromRGBO(89, 57, 241, 1),
                    ),
                  ),
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
                          _date.text = formattedDate!;
                        });
                      },
                      readOnly: true,
                      decoration: InputDecoration(
                          hintText: "Enter the Date",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(89, 57, 241, 1)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please select the date";
                        } else {
                          return null;
                        }
                      }),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 60,
                width: 320,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(89, 57, 241, 1))),
                    onPressed: () {
                      checkfield();
                      if (flag == true) {
                        addtask(true);
                      } else {
                        addtask(false, obj);
                      }
                      setState(() {});
                    },
                    child: Text("Submit",
                        style: GoogleFonts.inter(
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                            color: Colors.white))),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        );
      },
    );
  }
}
