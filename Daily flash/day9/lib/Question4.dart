// 4. Create a Screen and in the center of the screen place a TextField for user input
// and a "Submit" `Button` below the TextField. The TextField must have rounded
// borders and hint text. The color of the text field must be purple.

import 'package:flutter/material.dart';
final TextEditingController name=TextEditingController();

class Question extends StatelessWidget {
  const Question({super.key});
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            // cursorColor: Colors.amber,
            controller:name ,
            decoration: InputDecoration(
              // focusColor: Colors.purple,
              // hoverColor: Colors.purple,
              fillColor: Colors.purple,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
          ),
          ElevatedButton(onPressed: (){}, child: const Text("Submit"))
        ],
      ) ,
    );
  }
}
