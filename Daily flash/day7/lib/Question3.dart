// 3. Create a Screen with two horizontally aligned containers at the center of the
// screen. Apply a shadow to each container set individual colors and give a border
// to the Containers only the bottom edges of the container must be rounded.
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 100,
                width: 300,
               // height: 500,
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.black,),//Border.all(color: Colors.black,),
                  borderRadius:const BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                  boxShadow:const  [
                    BoxShadow(
                      color: Color.fromARGB(221, 111, 110, 110),
                      blurRadius: 40,
                      blurStyle: BlurStyle.outer
                    )
                  ]
        
        
                   ),
                // child: Row(),
              ),
              Container(
                height: 100,
                width: 300,
               // height: 500,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(color: Colors.black,),//Border.all(color: Colors.black,),
                  borderRadius:const BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                  boxShadow:const  [
                    BoxShadow(
                      color: Color.fromARGB(221, 111, 110, 110),
                      blurRadius: 40,
                      blurStyle: BlurStyle.outer
                    )
                  ]
        
        
                   ),
                // child: Row(),
              ),
              Container(
                height: 100,
                width: 300,
               // height: 500,
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(color: Colors.black,),//Border.all(color: Colors.black,),
                  borderRadius:const BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                  boxShadow:const  [
                    BoxShadow(
                      color: Color.fromARGB(221, 111, 110, 110),
                      blurRadius: 40,
                      blurStyle: BlurStyle.outer
                    )
                  ]
        
        
                   ),
                // child: Row(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
