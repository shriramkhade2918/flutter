import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Statemanage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Statemanage extends StatefulWidget {
  const Statemanage({super.key});
  @override
  State createState() => _Statemanage();
}

class _Statemanage extends State {
  int javaflag = 0;
  int flutterflag = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StateManagement"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  javaflag++;
                  setState(() {
                    
                  });
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(border: Border.all()),
                  child:const Center(child: Text("Java")),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text("$javaflag"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  flutterflag++;
                  setState(() {
                    
                  });
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(border: Border.all()),
                  child: const Center(child: Text("flutter")),
                ),),
              const SizedBox(
                width: 20,
              ),
              Text("$flutterflag"),
            ],
          ),
        ],
      ),
    );
  }
}
