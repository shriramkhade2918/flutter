// 1. Create a ListView but the Listview must be scrollable in a horizontal
// direction. The Listview must contain 5 children. Each child must be a
// Container widget of height 60 and width 60, giving color to the container.

import 'package:flutter/material.dart';
List color = [
    Colors.red,
    Colors.amber,
    Colors.blue,
    Colors.green,
    Colors.orange
  ];
class Question extends StatelessWidget {
  const Question({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
         Center(
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                 itemCount: color.length,
                 itemBuilder: (context, index) => 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      color: color[index],
                    ),
                  ],
                ),
              )
              ),
            ],
                 ),
         ),
      
    );
  }
}
