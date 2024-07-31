// 1. Create a TextField which must have a rectangular border. Initially, the
// border color of the TextField must be red but when we tap on the TextField
// the border color must turn green.

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
            decoration:const  InputDecoration(
              border: InputBorder.none,
              
              focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
              //focusColor: Colors.red,
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
              

          ),
        ),
      ),
      )
    );
  }
}
