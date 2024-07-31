// 1. Create a Screen and try to replicate the provided diagram. Customize the UI to
// include containers with different colors, providing each container with
// appropriate width and height dimensions as shown. Ensure proper margins as
// depicted in the provided diagram, using colors and dimensions of your choice.

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Row(
            children: [
              Container(
                height: 200,
                width: 100,
                color: Colors.amber,
              ),

              const Spacer(),
               Container(
                height: 200,
                width: 100,
                color: Colors.green,
              )
            ],
          ),
          Container(
            height: 200,
            width: 500,
            color: Colors.red,
            //child: Row(),
          ),
           Row(
            children: [
              Container(
                height: 200,
                width: 100,
                color: Colors.blue,
              ),

              const Spacer(),
               Container(
                height: 200,
                width: 100,
                color: Colors.purple,
              )
            ],
          )

        ],),
      )
    );
  }
}
