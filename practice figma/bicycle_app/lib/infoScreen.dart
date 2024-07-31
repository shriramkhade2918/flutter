import 'package:bicycle_app/shoppingScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State createState() => InformationState();
}

class InformationState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        SizedBox(
                          // width: 300,
                          child: Text(
                            "GT BIKE",
                            style: GoogleFonts.allertaStencil(
                                fontWeight: FontWeight.w500,
                                fontSize: 35,
                                color:
                                    const Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(55, 182, 233, 1),
                                    Color.fromRGBO(72, 92, 236, 1),
                                    Color.fromRGBO(75, 76, 237, 1),
                                  ],
                                )),
                            child: const Icon(
                              Icons.arrow_back_ios_new_outlined,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RotatedBox(
                            quarterTurns: 45,
                            child: Text(
                              "EXTREME",
                              style: GoogleFonts.allertaStencil(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 130,
                                  color: const Color.fromRGBO(
                                      255, 255, 255, 0.03)),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("images/info/pngwing.png"),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: 460,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(53, 63, 84, 0.8),
                                  Color.fromRGBO(34, 40, 52, 0.8),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: const Color.fromRGBO(
                                                36, 44, 59, 1)),
                                        child: Text(
                                          "Description",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: const Color.fromRGBO(
                                                72, 92, 236, 1)),
                                        child: Text(
                                          "Specification",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '''Lorem ipsum dolor sit amet. Ab tenetur molestias vel rerum cupiditate qui dolores consequatur et asperiores sunt ea magnam dolorem qui consectetur omnis. Ut error voluptas qui tempora provident aut necessitatibus voluptas rem eveniet nulla ut accusantium dignissimos aut facilis perspiciatis a natus quia.''',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1)),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // const Spacer(),
                        ],
                      )
                    ],
                  ),
                  // const Spacer(),
                ],
              ),
            ),
            const Spacer(),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(36, 44, 59, 1),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, -8),
                        blurRadius: 20,
                        color: Color.fromRGBO(0, 0, 0, .5))
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text(
                      "\$2,599.99",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 32,
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ShoppingScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(colors: [
                              Color.fromRGBO(55, 182, 233, 1),
                              Color.fromRGBO(75, 76, 237, 1),
                            ])),
                        child: Text(
                          "Buy Now",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 29,
                              color: const Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
