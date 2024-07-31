
// 1. Create a Screen that will display 3 containers in a Row, the first container
// must be of height 100 and width 100, the 2nd container must be of height
// 80 and width 80, and 3rd Container must be of height 70 and width 80.
// Give color to the containers as per your choice.

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
        Row(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
             Container(
              height: 80,
              width: 80,
              color: Colors.blue,
            ),
             Container(
              height: 70,
              width: 80,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
