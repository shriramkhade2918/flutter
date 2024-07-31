import 'package:flutter/material.dart';

// 1. Create an AppBar, give an Icon at the start of the appbar, give a title
// in the middle, and at the end add an Icon.

class question1 extends StatelessWidget {
  const question1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
      ),
    );
  }
}

// 2. Create an AppBar give a color of your choice to the AppBar and then
// add an icon at the start of the AppBar and 3 icons at the end of the
// AppBar.

class question2 extends StatelessWidget {
  const question2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.red,
        actions: const [
          Icon(Icons.favorite),
          Icon(Icons.message),
          Icon(Icons.alarm)
        ],
      ),
    );
  }
}

// 3. Create a Screen that will display an AppBar. Add a title in the AppBar
// the app bar must have a round rectangular border at the bottom.

class question3 extends StatelessWidget {
  const question3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text("AppBar"),
      shape: const BeveledRectangleBorder(
        side: BorderSide(),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), 
            bottomRight: Radius.circular(30)),
      ),
    ));
  }
}

// 4. Create a Screen that will display the Container in the Center of the
// Screen,
// with size(width: 300, height: 300). The container must have a blue
// color and it must have a border which must be of color red.

class question4 extends StatelessWidget {
  const question4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.blue, border: Border.all(color: Colors.red)),
        ),
      ),
    );
  }
}

// 5. Create a Screen, in the center of the Screen display a Container with
// rounded corners, give a specific color to the Container, the container
// must have a shadow of color red.

class question5 extends StatelessWidget {
  const question5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Container(
          height: 300,
          width:300,
          decoration:const BoxDecoration(
            color: Colors.green,
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                blurRadius: 20

              )
            ]
          )
        )
      ),
    );
  }
}
