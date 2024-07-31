// 3. In the screen add a container of size( width 100, height: 100) . The container
// must have a border as displayed in the below image. Give color to the container
// and border as per your choice.

import 'package:flutter/material.dart';

class question3 extends StatelessWidget {
  const question3({super.key});

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
         decoration: BoxDecoration(
          color:Colors.amber,
          border: Border.all(color: Colors.purple,width: 5),
          borderRadius:const  BorderRadius.only(topRight: Radius.circular(20))
         ),
        ),
      ),
    );
  }
}
