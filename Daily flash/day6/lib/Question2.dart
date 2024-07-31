// 2. Create a screen that displays a container. The container must display an image.
// Give a circular border only at the bottom of the container. Below the container
// display the button with size:(width:250, height:70). The button must display
// “Add to cart”. The color of the button must be purple. Both the container and
// button must be in the center of the screen.

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 360,
              decoration: const BoxDecoration(
                image:  DecorationImage(
                  image: NetworkImage(

                  "https://d2m3nfprmhqjvd.cloudfront.net/blog/20230522183738/BMW-M340i-1160x653.webp")),
                //border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                  )),
              
              ),
          
            SizedBox(
              height: 70,
              width: 250,
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.purple)),
                  onPressed: () {},
                  child: const Text("Add to Card")),
            )
          ],
        ),
      ),
    );
  }
}
