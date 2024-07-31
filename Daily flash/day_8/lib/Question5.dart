import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(width: 2),
          
          ),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const  [
                 SizedBox(
                  child: Text("title"),
                ),
                 SizedBox(
                  height: 40,
                ),
                 SizedBox(
                  child: Text("Give some description here"),
                )
              ],
            ),
            const SizedBox(
              width: 20,
            ),
           const Spacer(),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    border:Border.all(),
                    shape: BoxShape.circle 
                  ),
                  child: const Center(
                    child: Icon(Icons.add),
                  ),
                ),
                const SizedBox(
                  width: 50,
                )
              
          ],
        ),
      ),
    );
  }
}
