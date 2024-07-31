// 5. Create 2 TextFields to take input i.e. Name and Phone Number also give a
// submit button below the text fields. When the button is pressed the name
// and number entered must be displayed below the Button. -->

import 'package:flutter/material.dart';

final TextEditingController name = TextEditingController();
final TextEditingController number = TextEditingController();
String? name1;
String? phon1;
bool flag = false;

class Question extends StatefulWidget {
  const Question({super.key});
@override
State createState ()=>_Question();

}
class _Question extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: name,
            decoration: InputDecoration(
                hintText: "Enter name",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: number,
            decoration: InputDecoration(
                hintText: "Enter phon Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          ElevatedButton(
              onPressed: () {
                if(name.text.isNotEmpty&& number.text.isNotEmpty){
                   name1 = name.text;
                   phon1 = number.text;
                   flag = true;
                }
               
                setState(() {
                  
                });
              },
              child: const Text("Submit")),

          flag==true? SizedBox(child: Column(
            children: [
              Text("$name1"),
              Text("$phon1"),
            ],
          ),):const SizedBox(),
        ],
      ),
    );
  }
}
