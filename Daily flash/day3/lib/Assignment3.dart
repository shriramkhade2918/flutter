//1.Create a Container in the Center of the Screen with size(width: 300,
// height: 300) and display an image in the center of the Container. Apply
// appropriate padding to the container.

import 'package:flutter/material.dart';

class question1 extends StatelessWidget {
  const question1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 300,
        width: 300,
        color: Colors.red,
        padding: const EdgeInsets.all(20),
        child: Image.network(
          "https://thumbs.dreamstime.com/z/square-frame-beautiful-nature-scenery-close-up-dandelion-against-cloudy-blue-sky-white-flower-blooms-amid-green-154769697.jpg",
          height: 300,
          width: 300,
        ),
      )),
    );
  }
}

// 2. Create a Container in the Center of the screen, now In the background of
// the Container display an Image (the image can be an asset or network
// image ). Also, display text in the center of the Container.

class question2 extends StatelessWidget {
  const question2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: 317,
            width: 300,
            decoration:const  BoxDecoration(
              image:DecorationImage(image: NetworkImage("https://thumbs.dreamstime.com/z/square-frame-beautiful-nature-scenery-close-up-dandelion-against-cloudy-blue-sky-white-flower-blooms-amid-green-154769697.jpg"))
              ),
            child:const Center(
                child: Text("Shriram")
        )
        ),
      ),
    );
  }
}

// 3. Add a container in the center of the screen with a size(width: 200,
// height: 200). Give a red border to the container. Now when the user taps
// the container change the color of the border to green.

class question3 extends StatefulWidget {
  const question3({super.key});
  @override
  State createState() => _question3State();
}

class _question3State extends State {
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          border: Border.all(
            color: flag?Colors.green:Colors.red, width: 5),
        ),
        child: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.white),
          ),
          onPressed: () {
            setState(() {
              flag = !flag;
            });
          },
          child:const  Text(""),
        ),
      )),
    );
  }
}

// 4. Create a Container with size(height:200, width:300) now give a shadow to
// the container but the shadow must only be at the top side of the container.
class question4 extends StatelessWidget {
  const question4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 200,
        width: 200,
        
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.red,
          boxShadow: [
            BoxShadow(
              offset: Offset(0,-10),
              color: Colors.black,
              blurRadius: 5
              
            )
          ]
        ),
      
      )),
    );
  }
}
// 5. Create a Circular Container and give the Container 2 colors i.e. red and
// blue. 50 % of the container must contain red and the other 50 % must
// contain blue color.
class question5 extends StatelessWidget {
  const question5({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 200,
        width: 200,
        
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          //color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(200)),
          gradient: LinearGradient(
            colors:[ Colors.red,Colors.black],
            stops: [0.5,0.5],
           tileMode: TileMode.mirror
            )
        ),
      
      )),
    );
  }
}