
// 3. Create the following screen.
// 2. Create the following screen:

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
          decoration: BoxDecoration(
            boxShadow:const[
              BoxShadow(
                color: Colors.red,
                offset: Offset(5, 5)
              )
            ],
          borderRadius:BorderRadius.circular(20),
            gradient: const LinearGradient(
              
              // begin: Alignment.topCenter,
              // stops: [0.5,.5],
              colors: [Colors.blue,Colors.purple])
          ),
        ),
      ),
    );
  }
}


