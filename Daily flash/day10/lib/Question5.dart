

// 5. Create the following Screen.

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
        Container(
          height: 200,
          width: 200,
          decoration:const  BoxDecoration(
            shape: BoxShape.circle,
            boxShadow:[
              
              BoxShadow(
                color: Colors.red,
                offset: Offset(5, 5)
              )
            ],
          // borderRadius:BorderRadius.circular(20),
            gradient:  LinearGradient(
              
              // begin: Alignment.topCenter,
              // stops: [0.5,.5],
              colors: [Colors.blue,Colors.purple,Colors.green])
          ),
        ),
      ),
    );
  }
}


