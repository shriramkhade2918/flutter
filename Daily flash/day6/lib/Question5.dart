// 5. Create a Screen in which we have 3 Containers with size:
// (height:100,width:200) placed vertically. Each container must have a
// black border. Initially, the Color of the Containers must be white. The
// container that is tapped must change its color to red and other containers
// must be white.

import 'package:flutter/material.dart';

bool flag = false;
bool flag1 = false;

class Question extends StatefulWidget {
  const Question({super.key});
  @override
  State createState() => _Question();
}

Color Containercolor(bool fla) {
  if (fla == true) {
    return Colors.red;
  } else {
    return Colors.white;
  }
}

class _Question extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          GestureDetector(
            onTap: () {
              flag = !flag;
              // Containercolor();
              setState(() {
                
              });
            },
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  color: Containercolor(flag),
                  border: Border.all(color: Colors.black)),
            ),
          ),
           GestureDetector(
            onTap: () {
              flag1 = !flag1;
              // Containercolor();
              setState(() {
                
              });
            },
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  color: Containercolor(flag1),
                  border: Border.all(color: Colors.black)),
            ),
          )
        ]),
      ),
    );
  }
}
