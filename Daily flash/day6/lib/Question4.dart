//4. Create a screen and try to replicate the below image.
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 350,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 110,
                  width: 100,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                 Container(
                  height: 110,
                  width: 100,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  child: Container(
                    color: Colors.purple,
                  ),
                )
              ],
            ),
          )
        ],
      )) ,
    );
  }
}
