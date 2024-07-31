import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State createState() => _Question();
}

class _Question extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily flash 12"),
      ),
      body: 2Center(
        child: TextField(
          readOnly: true,

          // controller: TextEditingkhadeController(),
          decoration: InputDecoration(
              filled: true,
              focusColor: Colors.green,
              
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              )),
        ),
      ),
    );
  }
}

