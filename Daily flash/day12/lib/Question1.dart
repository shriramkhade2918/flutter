import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State createState() => _Question();
}

class _Question extends State {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily flash 12"),
      ),
      body: Center(
        child: TextField(
          obscureText: flag,

          // controller: TextEditingkhadeController(),
          decoration: InputDecoration(
              filled: true,
              focusColor: Colors.green,
              suffix: GestureDetector(
                  onTap: () {
                    setState(() {
                      flag = !flag;
                    });
                  },
                  child: flag?const  Icon(Icons.visibility_off):const Icon(Icons.visibility)),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              )),
        ),
      ),
    );
  }
}
