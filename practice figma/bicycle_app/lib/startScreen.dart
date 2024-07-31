
import 'package:bicycle_app/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State createState() => StartScreenState();
}

class StartScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: 1000,
        width: 460,
        decoration: const BoxDecoration(
            // backgroundBlendMode: B,
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                stops: [.5, .5],
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(36, 44, 59, 1),
                  Color.fromRGBO(75, 76, 237, 1),
                ])),
        child: Padding(
          padding: const EdgeInsets.only(top: 45),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset("images/image 6.png")],
              ),
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: [
                  RotatedBox(
                    quarterTurns: 45,
                    child: Text(
                      "EXTREME",
                      style: GoogleFonts.allertaStencil(
                          fontWeight: FontWeight.w400,
                          fontSize: 150,
                          color: const Color.fromRGBO(255, 255, 255, 0.2)),
                    ),
                  ),
                  Column(
                    children: [
                      Image.asset("images/pngwing.png"),
                        Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(36, 44, 59, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            bottomLeft: Radius.circular(30),
                          ),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(-3, 4),
                                blurRadius: 4,
                                color: Color.fromRGBO(0, 0, 0, 0.25))
                          ]),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5),
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(239, 186, 51, 1),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(5),
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(75, 76, 237, 1),
                              ),
                              child: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 35,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Get Start",
                            style: GoogleFonts.poppins(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(255, 255, 255, 1)),
                          ),
                          const SizedBox(
                            width: 15,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
                    ],
                  ),
                 
            
                ],
                
              ),
            ]
          ),
        ),
      ),
    );
  }
}
