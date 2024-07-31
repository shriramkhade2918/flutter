import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Game(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Game extends StatelessWidget {
  const Game({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cross Game"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: ListView.builder(
                
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: ((context, index) {
                return Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(border: Border.all()),
                );
              })),
            ),
             Container(
              child: ListView.builder(
                
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: ((context, index) {
                return Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(border: Border.all()),
                );
              })),
            ),
             Container(
              child: ListView.builder(
                
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: ((context, index) {
                return Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(border: Border.all()),
                );
              })),
            )
          ],
        ),
      ),
    );
  }
}
