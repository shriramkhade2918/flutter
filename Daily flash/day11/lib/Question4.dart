// 4. Create a Textfield and display the hint as shown in the image, also allow
// the user to type 20 characters only and display the count of the characters.

import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State createState() => _QuestionState();
}

class _QuestionState extends State {
  String name = '';
  final TextEditingController _name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          maxLength: 20,
          onChanged: (value) {
            name = value;
            
            setState(() {
              
            });
          },
          controller: _name,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              counter: Text("${name.length}/20"),
              alignLabelWithHint: true,
              labelText: "Enter your name",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ),
      ),
    ));
  }
}
