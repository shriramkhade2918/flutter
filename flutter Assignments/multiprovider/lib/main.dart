import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyAp());

class MyAp extends StatelessWidget {
  const MyAp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: ((context) => Student(studentName: "shriram", stdId: 21)),
        ),
        ChangeNotifierProvider(create: ((context) => Collage(collageName: "sinhgad", stdId: 555)),)
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("MultiProvider"),
      ),
      body: Column(
        children: [
          Text(Provider.of<Student>(context).studentName),
          const SizedBox(
            height: 10,
          ),
          Text("${Provider.of<Student>(context).stdId}"),
          const SizedBox(
            height: 10,
          ),
          Text(Provider.of<Collage>(context).collageName),
          const SizedBox(
            height: 10,
          ),
          Text("${Provider.of(context).stdId}"),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<Collage>(context,listen: false).changeData("zeal", 44445);
            },
            child: const Text("changeData"),
          )
        ],
      ),
    );
  }
}

class Student {
  String studentName;
  int stdId;
  Student({required this.studentName, required this.stdId});
}

class Collage extends ChangeNotifier {
  int stdId;
  String collageName;
  Collage({required this.collageName, required this.stdId});

  void changeData(String collageName, int stdId) {
    this.collageName = collageName;
    this.stdId = stdId;
    notifyListeners();
  }
}
