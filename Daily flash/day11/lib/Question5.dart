// 5. Create a TextField which must take a certain height. Also, change the color
// of the cursor to red. The height of the text field must be given using the
// parameter present inside the Textfield i.e. do not use a sized box or any
// other widget to give size to the Textfield.

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
          controller: _name,
          // cursorHeight: 50,
          maxLines: 10,
          decoration:const  InputDecoration(
            label: Text("Enter your name"),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))
            )
            
          ),
        ),
      ),
    ));
  }
}

