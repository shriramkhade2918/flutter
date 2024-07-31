import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return const MaterialApp(
      home: container_style(),
    );
  }
}

class container_style extends StatefulWidget {
  const container_style({super.key});

  @override
  State createState() => _container_StyleState();
}

class _container_StyleState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Container Style",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w800, color: Colors.orange),
        ),
      ),
      body: Center(
        child:Container(
          height: 200,
          width: 200,
          //color: Colors.amber,
          decoration: BoxDecoration(
            color: Colors.red,
            border:Border.all(
              color: Colors.black,
              width: 10
            ),
            shape: BoxShape.rectangle,
            borderRadius:  const BorderRadius.all(Radius.circular(10)),
            
            
            image:const DecorationImage(
              image:NetworkImage("https://img.freepik.com/free-vector/1st-winner-golden-medal-number-one-achievement_1017-27869.jpg"),

          ),
          boxShadow:const [
            BoxShadow(
              color: Colors.red,
              spreadRadius: 30,
              blurRadius: 10,
              offset: Offset(35,35)
            ),
             BoxShadow(
              color: Colors.pinkAccent,
              spreadRadius: 20,
              blurRadius: 10,
              offset: Offset(35,35)
            ),
             BoxShadow(
              color: Colors.green,
              spreadRadius: 10,
              blurRadius: 10,
              offset: Offset(35,35)
            ),
          ],
          gradient: 
          //colors: [Colors.red,Colors.black])
        ),
        
        
         /*Container(
               height: 200,
               width: 200,
             padding:const  EdgeInsets.only(bottom:55),
             color: Colors.red,
             child: Container(
              height: 200,
              margin: const EdgeInsets.only(top: 10),
             width: 200,
             
             color: Colors.blue,
             
             )*/

                ),
      )
    );
  }
}
