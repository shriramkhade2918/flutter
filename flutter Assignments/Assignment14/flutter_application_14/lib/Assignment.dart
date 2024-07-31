import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  bool flag1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("change container color"),
      ),
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: flag1 == false ? Colors.red : Colors.amber,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                    onPressed: () {
                      flag1 = ! flag1;
                    },
                    child: const Text("button")),
                ElevatedButton(onPressed: () {}, child: const Icon(
                  Icons.add_comment,
                  size: 40,
                )),
                ElevatedButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.add_comment,
                      size: 40,
                    )),

              ],
            )
          ],
        ),
      ),
    );
  }
}
