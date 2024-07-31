import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State createState() => _Question();
}

class _Question extends State {
  // bool flag = true;
  List<String> name = [];
  TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily flash 12"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _name,
              // obscureText: flag,
              onSubmitted: (value) {
                name.add(value);
                setState(() {
                  _name.clear();
                });
              },
              // controller: TextEditingkhadeController(),
              decoration: const InputDecoration(
                  label: Text("Enter Weekdays"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  )),
            ),
            SizedBox(
              child: Text("$name "),
            )
          ],
        ),
      ),
    );
  }
}
