import 'package:flutter/material.dart';
import 'countDynamic.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home:countDynamic()
    );
  }
}
     /* home:Scaffold(
        appBar:AppBar(
          title:const Text("Static ListView"
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
           
            Container(
              color: Colors.black,
              margin: const EdgeInsets.all(10),
              child: Image.network("https://imgd.aeplcdn.com/370x208/n/cw/ec/141867/nexon-exterior-right-front-three-quarter-71.jpeg?isig=0&q=80")
            ),
             Container(
              color:Colors.amber,
              margin: const EdgeInsets.all(10),
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR1dOUqE1yM3dX5TnjegfmNzX2LljS9KBci3z_jl2qDD3jBp0yKEZxdkh1J-CFBsqAA4w&usqp=CAU")
             ),
             Container(
              color: Colors.blue,
              margin: const EdgeInsets.all(10),
              child: Image.network("https://akm-img-a-in.tosshub.com/businesstoday/images/story/202002/lamborghini_660_140220101539.jpg")
            ),
             Container(
              color:Colors.yellow,
              
              margin: const EdgeInsets.all(10),
              height: 400,
              child: Image.network("https://imgd.aeplcdn.com/642x336/n/cw/ec/140591/x1-exterior-right-front-three-quarter-7.jpeg?isig=0&q=80"
              ,height: 100,
              width: 200,),
            
            ),
            
          ],
        ),
      )
    );
  }

}
*/