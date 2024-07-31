import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: colorTogle(),
    );
  }
}

class colorTogle extends StatefulWidget {
  const colorTogle({super.key});

  @override
  State<colorTogle> createState() => _colorTogleState();
}

class _colorTogleState extends State<colorTogle> {
  bool box1Color = false;
  bool box2Color = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("colorsTogle"),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: box1Color ? Colors.red : Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          box1Color = !box1Color;
                        });
                      },
                      child: const Text("Button1")),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: box2Color ? Colors.blue : Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          box2Color = !box2Color;
                        });
                      },
                      child: const Text("Button2")),
                ],
              )
            ],
          ),
        ));
  }
}
