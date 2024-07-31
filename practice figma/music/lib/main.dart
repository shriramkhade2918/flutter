import 'package:flutter/material.dart';
import 'package:music/homeScreen.dart';
// import 'package:music/mainScreen.dart';
// import 'package:music/musicScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:MusicApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
