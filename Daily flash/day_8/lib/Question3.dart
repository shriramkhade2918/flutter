import 'package:flutter/material.dart';
class Question extends StatelessWidget{
  const Question({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Center(
        
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1
            )),
          height: 100,
          width: 302,
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10)
                  ),
                  border: Border.all(width: 2)),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(border: Border.all(width: 2)),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10)
                  ),
                  border: Border.all(width: 2)),
              )
            ],

          ),
        ),
      ) ,
    );
  }
}
