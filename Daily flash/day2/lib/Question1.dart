/// 1. Create a screen that displays the container in the center having size (height:
// 200, width: 200). The Container must have border with rounded edges. The
// border must be of the color red. Display a Text in the center of the container.

import 'package:flutter/material.dart';

class question1 extends StatelessWidget {
  const question1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("DailyFlash 2",
        style:TextStyle(
          fontSize:30,
          fontWeight: FontWeight.w800,
          color:Colors.orange
          ))
      ),
      body: Center(
        child: Container(
          height: 200,
          width:200,
          decoration:BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border:Border.all(
              color: Colors.red,
              width: 5
            )
          ),
          child:const Center(child:  Text("Container"),)
        ),
      ),
    );
  }
}
