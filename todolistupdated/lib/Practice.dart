import 'dart:collection';
import 'database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:todolistupdated/main.dart';

// dynamic database;
List<Map> data = [];

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State createState() {
    return _PracticeState();
  }
}

class _PracticeState extends State {
  @override
  void initState() {
    printdb();
  }

  List<ModelClass> task = [];

  List<int> stask = [];

  IconData? showIcon(int index) {
    // print(stask);
    if (stask.contains(index)) {
      return Icons.task_alt_rounded;
      // return Icons.circle_outlined;
    } else {
      // return Icons.task_alt_rounded;
      return Icons.circle_outlined;
    }
  }

  int flag = -1;

  void submittask(ModelClass obj, int index) async {
    print(obj.done);
    print(index);

    if (stask.contains(index)) {
      index = -1;
    }

    obj = ModelClass(
      taskid: obj!.taskid,
      title: obj.title,
      dis: obj.dis,
      date: obj.date,
      done: index,
    );
    dynamic localdb = await database;
    print("taskid ${obj.taskid}");
    localdb.update(
      "ToDoList",
      obj.map(),
      where: "taskid=?",
      whereArgs: [obj.taskid],
    );
    printdb();
  }

  bool flagv = true;
  // controller login page
  TextEditingController username = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController email = TextEditingController();
  // key login page
  GlobalKey<FormFieldState> usernamekey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> passkey = GlobalKey<FormFieldState>();

  GlobalKey<FormFieldState> usernamekeys = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> passkeys = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> emailkey = GlobalKey<FormFieldState>();

  GlobalKey keys = GlobalKey();

  Map<String, String> userpass = HashMap<String, String>();

  void logincheck() {
    bool str1 = usernamekey.currentState!.validate();
    bool str2 = passkey.currentState!.validate();
    if (str1 && str2) {
      Map info = {
        "username": username.text.trim(),
        "password": pass.text.trim()
      };
      data.add(info);

      final snackbar = SnackBar(
        content: Text(
          "Login successfully",
          style: TextStyle(color: Colors.red),
        ),
        backgroundColor: const Color.fromARGB(255, 2, 252, 10),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
      screenindex = 2;
      clearfield();
      setState(() {});
    } else {
      final snackbar = SnackBar(
        content: Text("Login Failed", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.red,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }

  void loginchecksign() {
    bool str1 = usernamekeys.currentState!.validate();
    bool str2 = passkeys.currentState!.validate();
    bool str3 = emailkey.currentState!.validate();
    if (str1 && str2 && str3) {
      final snackbar = SnackBar(
        content: Text("Sign up successfully"),
        backgroundColor: const Color.fromARGB(255, 2, 252, 10),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
      login = 0;
      userpass.addAll({username.text: pass.text});
      clearfield();
      setState(() {});
    } else {
      final snackbar = SnackBar(
        content: Text("Sign up Failed"),
        backgroundColor: Colors.red,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }

  void clearfield() {
    username.clear();
    pass.clear();
    email.clear();
    setState(() {});
  }

  int login = 0;
  int screenindex = 0;
  Scaffold showScreen() {
    if (screenindex == 0) {
      userpass.addAll({'Shri': 'Shri@123'});
      return (login == 0)
          ? Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          screenindex = 0;
                          setState(() {});
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                        ),
                      ),
                      Image.asset("lib/image/lock.jpg"),
                      SizedBox(height: 30),
                      Text(
                        "Login",
                        style: GoogleFonts.inter(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        // maxLines: 1,
                        key: usernamekey,
                        controller: username,

                        validator: (value) {
                          if (value != null && !userpass.containsKey(value)) {
                            return "Invalid Username";
                          } else {
                            return null;
                          }
                        },

                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person_2),
                            hintText: "Enter UserName",
                            border: OutlineInputBorder(
                                // borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        key: passkey,
                        controller: pass,
                        validator: (value) {
                          if (value != null && !userpass.containsValue(value)) {
                            return "Invalid Password";
                          } else {
                            return null;
                          }
                        },
                        obscureText: (flagv) ? true : false,
                        obscuringCharacter: "*",
                        // maxLines: 1,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: (flagv)
                                ? GestureDetector(
                                    onTap: () {
                                      flagv = !flagv;
                                      setState(() {});
                                    },
                                    child: Icon(Icons.visibility_off))
                                : GestureDetector(
                                    onTap: () {
                                      flagv = !flagv;
                                      setState(() {});
                                    },
                                    child: Icon(Icons.visibility)),
                            hintText: "Enter Password",
                            border: OutlineInputBorder(
                                // borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          logincheck();
                        },
                        child: Text(
                          "Login",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(500, 50),
                            backgroundColor: Color.fromARGB(255, 32, 52, 230)),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        height: 1,
                        width: 540,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          "Don't have an account",
                          style: GoogleFonts.inter(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            login = 1;
                            clearfield();
                            setState(() {});
                          },
                          child: Text(
                            "Sign up",
                            style: GoogleFonts.inter(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 32, 52, 230)),
                          ),
                        ),
                      ),
                      // Image.network(""),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 35,
                              width: 35,
                              child: Image.asset("lib/image/google.png")),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUF3ReArthuTJeHcG-5AP_vAyEKzsH3JJNdg&s"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 35,
                            width: 35,
                            child: Image.asset("lib/image/twi.png"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset("lib/image/ins.jpg"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          : Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          login = 0;
                          setState(() {});
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                        ),
                      ),
                      // SizedBox()
                      // Image.asset("lib/image/lock.jpg"),
                      SizedBox(height: 30),
                      Center(
                        child: Text(
                          "Sign up",
                          style: GoogleFonts.inter(
                              fontSize: 30, fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Text(
                          "Create New Account",
                          style: GoogleFonts.inter(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        // maxLines: 1,
                        key: usernamekeys,
                        controller: username,

                        validator: (value) {
                          if (value != null &&
                              !value.startsWith(RegExp('[A-Z]'))) {
                            return "First latter must uppercase";
                          } else {
                            return null;
                          }
                        },

                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person_2),
                            hintText: "Enter UserName",
                            border: OutlineInputBorder(
                                // borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        // maxLines: 1,
                        key: emailkey,
                        controller: email,

                        validator: (value) {
                          if (value != null &&
                              !value.contains(RegExp(r'@gmail.com'))) {
                            return "email must have @gmail.com";
                          } else {
                            return null;
                          }
                        },

                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            hintText: "Enter Email",
                            border: OutlineInputBorder(
                                // borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        key: passkeys,
                        controller: pass,
                        validator: (value) {
                          if (value != null &&
                              !value.contains(RegExp(r'[@,*,$,%,#,!]'))) {
                            return "Invalid must contain [@,*,%,#,!,]";
                          } else {
                            return null;
                          }
                        },
                        obscureText: (flagv) ? true : false,
                        obscuringCharacter: "*",
                        // maxLines: 1,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: (flagv)
                                ? GestureDetector(
                                    onTap: () {
                                      flagv = !flagv;
                                      setState(() {});
                                    },
                                    child: Icon(Icons.visibility_off))
                                : GestureDetector(
                                    onTap: () {
                                      flagv = !flagv;
                                      setState(() {});
                                    },
                                    child: Icon(Icons.visibility)),
                            hintText: "Enter Password",
                            border: OutlineInputBorder(
                                // borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          loginchecksign();
                        },
                        child: Text(
                          "Sing Up",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(500, 50),
                            backgroundColor: Color.fromARGB(255, 32, 52, 230)),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        height: 1,
                        width: 540,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          "Already have an account?",
                          style: GoogleFonts.inter(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Center(
                          child: GestureDetector(
                        onTap: () {
                          clearfield();
                          login = 0;

                          setState(() {});
                        },
                        child: Text(
                          "Login",
                          style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 32, 52, 230)),
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            );
    } else {
      return Scaffold(
        backgroundColor: Color.fromRGBO(111, 81, 255, 1),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    screenindex = 0;
                    setState(() {});
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Color.fromARGB(255, 230, 200, 6),
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // padding: EdgeInsets.all(11),
              width: 200,
              // height: 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello!!!",
                      style: GoogleFonts.quicksand(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    Text(
                      data[0]["username"],
                      style: GoogleFonts.quicksand(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 19,
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
                          // padding: EdgeInsets.only(top: 20, left: 17),
                          itemBuilder: (context, index) => Slidable(
                            endActionPane: ActionPane(
                              closeThreshold: 0.10,
                              extentRatio: 0.15,
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

                                          setState(() {});
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  89, 57, 241, 1),
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
                                          task = [];
                                          printdb();
                                          setState(() {});
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  89, 57, 241, 1),
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
                              width: 390,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  // border: Border.all(
                                  //   width: 1,
                                  //   // color: Color.fromRGBO(111, 81, 255, 1),
                                  // ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.4),
                                        // offset: Offset(10, 10),
                                        blurRadius: 9)
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 4),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 59,
                                      width: 59,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1.5,
                                            // color:
                                            // Color.fromRGBO(111, 81, 255, 1),
                                          ),
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              // image: NetworkImage(
                                              //     "https://static.vecteezy.com/system/resources/thumbnails/003/529/153/small/business-to-do-list-flat-icon-modern-style-free-vector.jpg"),
                                              image: NetworkImage(
                                            "https://static.vecteezy.com/system/resources/thumbnails/003/529/153/small/business-to-do-list-flat-icon-modern-style-free-vector.jpg",
                                          )),
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
                                                fontSize: 15,
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
                                                fontSize: 12,
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
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
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
                                              submittask(task[index], index);
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
  }

  @override
  Widget build(BuildContext context) {
    // print(task);
    // print(stask);
    print(userpass);

    return showScreen();
  }

  void edittask(ModelClass obj) {
    _title.text = obj.title;
    _dis.text = obj.dis;
    _date.text = obj.date;
    showsheet(false, obj);
    setState(() {});
  }

  void removecard(ModelClass obj) async {
    // print(obj.taskid);
    dynamic localdb = await database;

    localdb.delete(
      "ToDoList",
      where: "taskid=?",
      whereArgs: [obj.taskid],
    );
    printdb();
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
  GlobalKey<FormFieldState> _datekey = GlobalKey<FormFieldState>();

  void checkfield() {
    bool val1 = _titlekey.currentState!.validate();
    bool val2 = _disKey.currentState!.validate();
    bool val3 = _datekey.currentState!.validate();
  }

  void insertdatabase() async {
    ModelClass obj = new ModelClass(
      title: _title.text.trim(),
      dis: _dis.text.trim(),
      date: _date.text.trim(),
      done: -1,
    );

    dynamic localdb = await database;
    localdb.insert(
      "ToDoList",
      obj.map(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    printdb();
  }

  void addtask(flag, [ModelClass? obj]) async {
    // print(obj!.done);
    // print("taskid ${obj!.taskid}");
    print("Reach");
    if (_title.text.isNotEmpty &&
        _dis.text.isNotEmpty &&
        _date.text.isNotEmpty) {
      if (flag == true) {
        // task.add(ModelClass(
        //     _title.text.trim(), _dis.text.trim(), _date.text.trim()));

        insertdatabase();
      } else {
        obj = ModelClass(
          taskid: obj!.taskid,
          title: _title.text.trim(),
          dis: _dis.text.trim(),
          date: _date.text.trim(),
          done: obj.done,
        );
        dynamic localdb = await database;
        print("taskid ${obj.taskid}");
        localdb.update(
          "ToDoList",
          obj.map(),
          where: "taskid=?",
          whereArgs: [obj.taskid],
        );
        printdb();
        // setState(() {});
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

  Future<List<Map<String, dynamic>>> getdata() async {
    dynamic localdb = await database;

    List<Map<String, dynamic>> list = await localdb.query("ToDoList");
    print(list);
    return list;
  }

  void printdb() async {
    List<Map<String, dynamic>> list = await getdata();
    task = [];
    stask = [];
    for (int i = 0; i < list.length; i++) {
      task.add(
        ModelClass(
          taskid: list[i]['taskid'],
          title: list[i]['title'],
          dis: list[i]['dis'],
          date: list[i]['date'],
          done: list[i]['done'],
        ),
      );
      stask.add(list[i]['done']);
    }
    setState(() {});
  }

  // List<String> images = [
  //   "https://media.istockphoto.com/id/1303877287/vector/paper-checklist-and-pencil-flat-pictogram.jpg?s=612x612&w=0&k=20&c=NoqPzn94VH2Pm7epxF8P5rCcScMEAiGQ8Hv_b2ZwRjY=",
  //   "https://static.vecteezy.com/system/resources/thumbnails/003/529/153/small/business-to-do-list-flat-icon-modern-style-free-vector.jpg",
  //   "https://cdn.pixabay.com/photo/2017/06/10/07/18/list-2389219_640.png",
  //   "https://cdn.pixabay.com/photo/2017/10/07/21/37/list-2828012_640.png",
  //   "https://media.istockphoto.com/id/1256489977/vector/tasks-check-checklist-blue-icon.jpg?s=612x612&w=0&k=20&c=dUctYWRSmMz1uiSFCCcJUKOyeoxVbvPuLugf8CLQiSo=",
  // ];

  List<int> indexs = [];
  void showsheet(bool flag, [ModelClass? obj]) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        maxLines: 3,
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
                Center(
                  child: SizedBox(
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
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
