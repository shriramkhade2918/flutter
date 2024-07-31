import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:developer';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // log("In MyApp Build");
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => Student(name: "rushi", birthYear: 2002),
        ),
        ChangeNotifierProvider(
          create: (context) =>
              Collage(clgName: "zeal", department: "IT", studentCount: 250),
        ),
        ChangeNotifierProvider(
          create: (context) =>
              Home(nickName: "dada", sirName: "ghegade", familiMamber: 5),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainApp(),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State createState() => _MainAppState();
}

class _MainAppState extends State {
  @override
  Widget build(BuildContext context) {
    log("In MainAppState build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Data"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            Provider.of<Student>(context).name,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "${Provider.of<Student>(context).birthYear}",
          ),
          const SizedBox(
            height: 20,
          ),
          Consumer<Collage>(
            builder: ((context, value, child) {
              return Column(
                children: [
                  Text(
                    value.clgName,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    value.department,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "${value.studentCount}",
                  ),
                  // Text(
                  //   provider.nickName,
                  // ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // Text(
                  //   "${provider.familiMamber}",
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              );
            }),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<Collage>(context, listen: false)
                  .changeData("zeal", "CS", 325);
              Provider.of<Home>(context, listen: false)
                  .changeData("bhaiya", "khule", 10);
            },
            child: const Text("Change Data"),
          ),
          const DemoClass(),
        ],
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}

class DemoClass extends StatefulWidget {
  const DemoClass({super.key});

  @override
  State createState() => _DemoClassState();
}

class _DemoClassState extends State {
  @override
  Widget build(BuildContext context) {
    log("In Demo Class Build");
    return Column(
      children: [
        Consumer5(builder: builder)
        // Consumer7(builder: ((context, value, value2, value3, value4, value5, value6, child) {
        //   return Column(
        //     children: [],
        //   );
        // })
        // )

        Text(
          Provider.of<Collage>(context).department,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          Provider.of<Home>(context).nickName,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "${Provider.of<Home>(context).familiMamber}",
        ),
        const SizedBox(
          height: 20,
        ),

        // Provider.of<Collage>(context).changeData("tssm", "mechanical", 150),
      ],
    );
  }
}

class Student {
  String name;
  int birthYear;
  Student({required this.name, required this.birthYear});
}

class Collage extends ChangeNotifier {
  String clgName;
  String department;
  int studentCount;
  Collage(
      {required this.clgName,
      required this.department,
      required this.studentCount});

  void changeData(String clgName, String department, int studentCount) {
    // log("in changedata function ");
    this.clgName = clgName;
    this.department = department;
    this.studentCount = studentCount;
    notifyListeners();
  }
}

class Home extends ChangeNotifier {
  String nickName;
  String sirName;
  int familiMamber;
  Home(
      {required this.nickName,
      required this.sirName,
      required this.familiMamber});

  void changeData(String nickName, String sirName, int familiMamber) {
    // log("in changedata function ");
    this.nickName = nickName;
    this.sirName = sirName;
    this.familiMamber = familiMamber;
    notifyListeners();
  }
}
