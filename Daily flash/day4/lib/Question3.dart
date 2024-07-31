// 3. Create a Screen and then add a floating action button. In this button, you
// will have to display your name and an Icon which must be placed in a row.

import 'package:flutter/material.dart';

class question extends StatefulWidget {
  const question({super.key});

  @override
  State createState() => _questionState();
}

class _questionState extends State {
  @override
  Widget build(BuildContext context) {
    bool flag = false;

    return Scaffold(
      body: Column(
        children: [
         flag? const SizedBox():Row( children: const [
                    Icon(Icons.security),
                    Text("  Name  :  "),
                    Text("Shriram khade")
                  ],
                ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          flag = !flag;
          setState(() {
            
          });
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
