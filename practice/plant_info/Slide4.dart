
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Plants extends StatefulWidget {
  const Plants({super.key});

  @override
  State createState() => _PlantsState();
}

List color = [
  const Color.fromRGBO(62, 102, 24, 1),
  const Color.fromRGBO(197, 214, 181, 1),
  const Color.fromRGBO(197, 214, 181, 1),
];

class _PlantsState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration:const BoxDecoration(
            image: DecorationImage(image: AssetImage("images/Mask group.png"),
            alignment: Alignment.topRight
            )
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
          height: 32,
          width: 415,
          color: const Color.fromRGBO(123, 123, 123, 1),
              ),
              const Spacer(),
              Container(
          height: 50,
          width: 415,
          color: const Color.fromRGBO(123, 123, 123, 1),
              )
            ]),
        )
    ,
    );
  }
}
