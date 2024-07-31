import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("Assignment3"),
        centerTitle:true,
      ),
      body:SizedBox(
        height:double.infinity,
        child:Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                Container(
                  height:100,
                  width:100,
                  color:Colors.red,
                ),
                const SizedBox(
                  height:20,
                ),
                ElevatedButton(
                  onPressed:(){},
                  child:const Text("button1")
                ),
              ]
            ),
             Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                Container(
                  height:100,
                  width:100,
                  color:Colors.purple,
                ),
                const SizedBox(
                  height:20,
                ),
                ElevatedButton(
                  onPressed:(){},
                  child:const Text("button2")
                ),
              ]
            ),
             Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                Container(
                  height:100,
                  width:100,
                  color:Colors.blue,
                ),
                const SizedBox(
                  height:20,
                ),
                ElevatedButton(
                  onPressed:(){},
                  child:const Text("button3")
                ),
              ]
            ),
          ],
        ),
        )

    );
  }
}
