// 5. In the above question now take 3 rows, the first row must be the same. In
// 2nd Row place 3 Containers the space taken by them must be in a ratio of
// 5:4:1 and The 3 containers in last row must take space in a ratio of 7:2:1.
// Each Container must have a height of 100 and must have a color of your
// choice. Do not specify the width of the container.

import 'package:flutter/material.dart';

double h1 = 100;
double w1=100;

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: h1,
                width: w1,
                color: Colors.green,
              ),
              Container(
                height: h1,
                width: w1,
                color: Colors.amber,
              ),
              Container(
                height: h1,
                width: w1,
                color: Colors.red,
              )
              ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: h1,
                width: (5*w1),
                color: Colors.green,
              ),
              Container(
                height: h1,
                width: 4*w1,
                color: Colors.amber,
              ),
              Container(
                height: h1,
                width: w1,
                color: Colors.red,
              )
              ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: h1,
                width: 7*w1,
                color: Colors.green,
              ),
              Container(
                height: h1,
                width: 2*w1,
                color: Colors.amber,
              ),
              Container(
                height: h1,
                width: w1,
                color: Colors.red,
              )
              ],
          )
        ],
      ),
    );
  }
}
