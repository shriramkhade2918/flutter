import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music/mainScreen.dart';

class MusicApp extends StatefulWidget {
  const MusicApp({super.key});
  @override
  State createState() => MusicAppState();
}

class MusicAppState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/home.png"),
                // fit: BoxFit.fill,
                alignment: Alignment.topCenter)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: SizedBox(
                  child: Text(
                    '''Dancing between 
The shadows 
Of rhythm ''',
                    style: GoogleFonts.inter(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: Container(
                    // width: 400,
                    height: 47,
                    alignment: Alignment.center,

                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 46, 0, 1),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text(
                      "Get started",
                      style: GoogleFonts.inter(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Container(
                  // width: 400,
                  height: 47,
                  alignment: Alignment.center,

                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(255, 46, 0, 1),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      )),
                  child: Text(
                    "Continue with Email",
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(255, 46, 0, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 0),
                child: SizedBox(
                  width: 235,
                  child: Text(
                      "by continuing you agree to terms of services and  Privacy policy",
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(203, 200, 200, 1))),
                ),
              ),
              const SizedBox(
                height: 90,
              )
            ],
          ),
        ),
      ),
    );
  }
}
