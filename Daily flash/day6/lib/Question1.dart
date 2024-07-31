// 1. Create a screen that displays an asset image of the food item at the top of the
// Screen, below the image, display the name of the food item and below the name
// give the description of the item. Add appropriate padding.

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("dailyFlash"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Image(
            image: NetworkImage(
                "https://hips.hearstapps.com/hmg-prod/images/classic-cheese-pizza-recipe-2-64429a0cb408b.jpg?crop=0.8888888888888888xw:1xh;center,top&resize=1200:*"),
          ),
          Container(
            margin:const  EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
              SizedBox(
            height: 10,
          ),
          Text("Pizza",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600
          ),),
          SizedBox(
            height: 10,
          ),
          Text(
              "A large circle of flat break bakes with chees,tomatos and vegitable spreed on top",
              style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w300
          ),)
            ]),
          )
          
        ],
      ),
    );
  }
}
