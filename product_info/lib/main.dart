import 'package:flutter/material.dart';
import 'package:product_info/View/showData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShowDataInfoScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
