//2. In the screen add a container of size( width 100, height: 100) that must only
// have a left border of width 5 and color as per your choice. Give padding to the
// container and display a text in the Container.

import 'package:flutter/material.dart';

class question2 extends StatelessWidget {
  const question2({super.key});

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
          height: 100,
          width:100,
          padding:const EdgeInsets.all(20),
          decoration:const BoxDecoration(
            color: Colors.amber,
            //borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20)),
            border:Border(
              left: BorderSide(width: 5,color: Colors.red)
            )
          ),
          child:const Center(child:  Text("Container"),)
        ),
      ),
    );
  }
}
