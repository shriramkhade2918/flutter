// 3. Create a text field and give amber color to the text field and also display a
// hint text in the center of the text field.

import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State createState() => _QuestionState();
}

class _QuestionState extends State {
  final TextEditingController _name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _name,
            textAlign: TextAlign.center,
            
          decoration: InputDecoration(
            
            border:OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            filled: true,
            fillColor: Colors.amber,
            hintText: "Enter your name"
          ),
        ),
      ),
      )
    );
  }
}


