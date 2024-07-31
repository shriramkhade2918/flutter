import 'package:cloth_shop/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class BoardingScreen extends StatefulWidget {
  const BoardingScreen({super.key});

  @override
  State createState() => BoardingState();
}

class BoardingState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 490,
            width: 460,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                image: DecorationImage(
                    image: AssetImage("images/Rectangle 989.png"),
                    fit: BoxFit.fill)),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find The",
                  style: GoogleFonts.imprima(
                      fontSize: 45,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(13, 13, 14, 1)),
                ),
                Text(
                  "Best Collections",
                  style: GoogleFonts.imprima(
                      fontSize: 45,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(13, 13, 14, 1)),
                ),
                Text(
                  "Get your dream item easily with FashionHub and get other intersting offer",
                  style: GoogleFonts.imprima(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(121, 119, 128, 1)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 65,
                      width: 150,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              width: 1,
                              color: const Color.fromRGBO(13, 13, 14, 1))),
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.imprima(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(13, 13, 14, 1)),
                      ),
                    ),
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
                        alignment: Alignment.center,
                        height: 65,
                        width: 150,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 122, 0, 1),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                width: 1,
                                color: const Color.fromRGBO(13, 13, 14, 1))),
                        child: Text(
                          "Sign In",
                          style: GoogleFonts.imprima(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(13, 13, 14, 1)),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
