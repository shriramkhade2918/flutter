// 2. Create a Screen that displays an `Icon` widget representing a star the size of the
// icon must be 40 and the color of the icon must be orange, beside the icon place a
// `Text` widget with the content "Rating: 4.5". Apply a font size of 25 and bold
// weight to the text. Refer to below image.

import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  const Question({super.key});

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: Center(
        
        child:Container(
         width: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.black)
          ),
          child: Row(
            children:const [
              Icon(Icons.star_border_outlined,
              size: 40,),
              Text(" Rating: 4.5 ",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),)
              
              ],
          ),
        ),
      ),

    );
  }
}