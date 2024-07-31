import 'package:flutter/material.dart';
import 'QuizeUI.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizeUI(),
      debugShowCheckedModeBanner: false,
    );
  }
}
/*
class TestQuize extends StatefulWidget {
  const TestQuize({super.key});

  @override
  State<TestQuize> createState() => _TestQuizeState();
}

class _TestQuizeState extends State<TestQuize> {
  int _count = 1;
  List<String> ll = ["button1", "button2", "button3", "button4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tech Quize"),
          backgroundColor: Colors.pink,
        ),
        body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("$_count /10 "),
              const SizedBox(
                height: 10,
              ),
              const Text("Quistion: What is Flutter"),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 30,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("button1"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 30,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("button2"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 30,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("button3"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 200,
                color: Colors.red,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("button4"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    const Assignment();
                  });
                  
                },
                child: const Text("Next"),
              ),
            ],
          ),
        ]));
  }
}
*/