// Create a container that will have a border. The top right and bottom left corners
// of the border must be rounded. Now display the Text in the Container and give
// appropriate padding to the container.
// Refer to the below image :

import 'package:flutter/material.dart';

class question4 extends StatelessWidget {
  const question4({super.key});

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
          width:300,
         decoration: BoxDecoration(
          color:const Color.fromARGB(255, 211, 144, 222),
          border: Border.all(color: Colors.purple,width: 5),
          borderRadius:const  BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20))
         ),
         child: Column(
          
          children:  [ 

          Row(
            children:const  [
              Text(" Your Name: ",),
            ],
          ),
        const   Center(
            child: Text("Shriram",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.black
            ),),
          )
         ],)
        ),
      ),
    );
  }
}

