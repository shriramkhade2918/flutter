import 'package:flutter/material.dart';
import 'package:refresh_indicator/reflesh%20Indicator.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:RifreShIndicator()
    );
  }
}
