// 1. Create a Container that should resemble the following image.

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(20),
            gradient: const LinearGradient(colors: [Colors.red,Colors.blue])
          ),
        ),
      ),
    );
  }
}
