// 2. Create a TextField which must have a rectangular border and at the end of
// the TextField initially display a lock Icon. When we tap the TextField 2
// icons must be displayed at the end of the textfield i.e a lock icon and a
// search icon.

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
            
          decoration: InputDecoration(
            border:OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            suffixIcon:const Icon(Icons.lock),
            suffix: Row(
              children: const [
                Spacer(),
                Icon(Icons.search,color: Colors.blue,)
              ],
            )
            
          ),
        ),
      ),
      )
    );
  }
}

