import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/homeScreen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State createState() => StartScreanState();
}

class StartScreanState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 635,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "image/startScreenImg.png",
                ),
              ),
            ),
            // child:Row(
            //   children: [
            //     Text("9:23",
            //     style:GoogleFonts.poppins(
            //       fontSize:16,
            //       fontWeight:FontWeight.w600,
            //       color:const Color.fromRGBO(255, 255, 255, 1)
            //     ),
            //     )
            //   ],
            // ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Text(
              "Lets find your Paradise",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                // color:Color.fromRGBO(r, g, b, opacity)
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '''Find your perfect dream space''',
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(101, 101, 101, 1)),
          ),
          Text(
            '''
with just a few clicks''',
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(101, 101, 101, 1)),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>const HomeScreen(),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 30,
                right: 30,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color.fromRGBO(32, 169, 247, 1)),
              child: Text(
                "Get Started",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 23,
                    color: const Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
