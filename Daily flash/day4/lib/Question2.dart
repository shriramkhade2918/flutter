// 2. Create an Elevated button in the Center of the Screen. Decorate the button as
// follows.
// a. The button must be of Circular Shape.
// b. The Size of the button must be (width:200, height: 200).
// c. The button must have a border of color red.\



import 'package:flutter/material.dart';
class question extends StatelessWidget {
  const question({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          //padding: EdgeInsets.all(100),
          
          child: ElevatedButton(
            style:const ButtonStyle(
          
              //backgroundColor: MaterialStatePropertyAll(Colors.white),
              
              shadowColor: MaterialStatePropertyAll(
                
               
                Colors.red,

              ),
              shape: MaterialStatePropertyAll(CircleBorder(side: BorderSide(width: 10,color: Colors.red))) 
              ),
            
            onPressed: () {},
            child: const Text(""),
          ),
        ),
      ),
    );
  }
}
