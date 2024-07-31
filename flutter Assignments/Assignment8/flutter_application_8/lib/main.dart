import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Assignment8());
  }
}

class Assignment8 extends StatefulWidget {
  const Assignment8({super.key});
  @override
  State<Assignment8> createState() => _Assignment8State();
}

class _Assignment8State extends State<Assignment8> {
  int _count = 0;
  List<int> ll = [];

  void palindomNumber(){
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment8"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$_count"),
            const SizedBox(
              height: 20,
            ),
            const Text("How many Palindrom Numbers ?"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: const Text("button1")),
            const SizedBox(
              height: 20,
            ),
            const Text("How many ArmStrong  Numbers ?"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: const Text("button2")),
            const SizedBox(
              height: 20,
            ),
            const Text("How many Strong Numbers ?"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: const Text("button3")),
          ],
        ),
      ),
    );
  }
}
