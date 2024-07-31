import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizeScreen extends StatefulWidget {
  const QuizeScreen({super.key});

  @override
  State createState() => _QuizeScreenState();
}

class _QuizeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Math Quiz",
                style: GoogleFonts.dmSans(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(131, 76, 52, 1)),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            // ignore: avoid_unnecessary_containers
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 5,
                        // width: 300,
                        color: const Color.fromRGBO(42, 135, 63, 1),
                      ),
                    ),
                    Container(
                      height: 5,
                      width: 371,
                      color: const Color.fromRGBO(245, 216, 186, 1),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "1",
                      style: GoogleFonts.dmSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        // Color.fromRGBO(r, g, b, opacity)
                      ),
                    ),
                    Text(
                      " /20",
                      style: GoogleFonts.dmSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        // Color.fromRGBO(r, g, b, opacity)
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 320,
            child: Text(
              '''If David’s age is 27 years old in 2011. What was his age in 2003?''',
              style: GoogleFonts.dmSans(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(131, 76, 52, 1),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (contex, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                    left: 20,
                  ),
                  child: Container(
                    margin: EdgeInsets.all(5),
                    height: 70,
                    decoration:BoxDecoration(
                      color: const Color.fromRGBO(248, 145, 87, 1),
                      borderRadius: BorderRadius.circular(10)
                    ) ,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,

                        ),
                        Text("19 years",
                        style: GoogleFonts.dmSans(
                          fontSize:20,
                          fontWeight:FontWeight.w700,
                          color:const Color.fromRGBO(255, 255, 255, 1)
                        ),
                        ),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        const SizedBox(
                          width: 10,

                        ),
                      ],
                    ),
                  ),
                );
              },),
              const SizedBox(height: 20,),
              Row(

                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Expalination",
                      style: GoogleFonts.dmSans(
                        fontSize:16,
                        fontWeight:FontWeight.w700,
                        color:const Color.fromRGBO(131, 76, 52, 1)
                      ),
                      ),
                      SizedBox(
                        width: 280,
                        child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing ",
                        style: GoogleFonts.dmSans(
                          fontSize:14,
                          fontWeight:FontWeight.w400,
                          color:const Color.fromRGBO(131, 76, 52, 0.8)
                        ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){}, label:Row(
        children: [
           Text("Next",
          style: GoogleFonts.dmSans(
            fontSize:15,
            fontWeight:FontWeight.w700,
            color:const Color.fromRGBO(255, 255, 255, 1)

          ),
          ),
          Container(
            alignment: Alignment.center,
            height: 25,
            width: 25,
            decoration:const  BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(255, 255, 255, 1)
            ),
            child:const Icon(Icons.forward_sharp,
            color: Color.fromRGBO(26, 181, 134, 1),
            )
          )
        ],
      ),
      backgroundColor: Color.fromRGBO(26, 181, 134, 1),),
    );
  }
}
