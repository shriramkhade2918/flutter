// Add a container with the color red and display the text "Click me!" in the center
// of the container. On tapping the container, the text must change to “Container
// Tapped” and the color of the container must change to blue.

import 'package:flutter/material.dart';

class question5 extends StatefulWidget {
  const question5({super.key});
  @override
  State createState() => _question5();
}

class _question5 extends State {
  // const question5({super.key});
  bool flag = false;
  MaterialStateProperty<Color> returncolor() {
    if (flag == true) {
      return const MaterialStatePropertyAll(Colors.blue);
    } else {
      return const MaterialStatePropertyAll(Colors.red);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("DailyFlash 2",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Colors.orange))),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          //color:Colors.red,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:flag? const MaterialStatePropertyAll(Colors.blue):const MaterialStatePropertyAll(Colors.red)// returncolor()
            ),
            onPressed: () {
              flag = !flag;
              setState(() {});
            },
            child: Center(
                child: flag ? Text("taped Container") : Text("Click me!!")),
          ),
        ),
      ),
    );
  }
}
