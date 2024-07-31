import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TogleColor(),
    );
  }
}

class TogleColor extends StatefulWidget {
  const TogleColor({super.key});

  @override
  State<TogleColor> createState() => _TogleColorState();
}

class _TogleColorState extends State<TogleColor> {
  int _counter1 = 0;
  int _counter2 = 0;
  Color colorBox1() {
    if (_counter1 == 0) {
      return Colors.red;
    } else if (_counter1 == 1) {
      return Colors.yellow;
    } else if (_counter1 == 2) {
      return Colors.black;
    } else {
      _counter1 = 0;
      return Colors.red;
    }
  }

  Color colorBox2() {
    if (_counter2 == 0) {
      return Colors.black;
    } else if (_counter2 == 1) {
      return Colors.yellow;
    } else if (_counter2 == 2) {
      return Colors.red;
    } else {
      _counter2 = 0;
      return Colors.pink;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TogleColor"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: 100,
              width: 100,
              color: colorBox1(),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _counter1++;
                  });
                },
                child: const Text("Button1")),
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: 100,
              width: 100,
              color: colorBox2(),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _counter2++;
                  });
                },
                child: const Text("Button2")),
          ]),
        ]),
      ),
    );
  }
}
