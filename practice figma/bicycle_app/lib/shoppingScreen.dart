import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State createState() => ShoppingScreenState();
}

List<Map> cart = [
  {
    "image": "images/cart/pngwing.png",
    "name": "GT Bike",
    "price": "\$2,599.99",
  },
  {
    "image": "images/cart/image 3.png",
    "name": "Helmet",
    "price": "\$125.99",
  },
  {
    "image": "images/cart/image 6.png",
    "name": "Bottle",
    "price": "\$115.99",
  },
];
List<Map> paymentData = [
  {"name": "Subtotal", "price": "\$2,841.99"},
  {"name": "Delivery fee", "price": "\$0"},
  {"name": "Discount", "price": "30%"},
  {"name": "Total", "price": "\$1,989.37"},
];

class ShoppingScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width: 460,
        decoration: const BoxDecoration(
            // backgroundBlendMode: B,
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                stops: [.5, .5],
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(36, 44, 59, 1),
                  Color.fromRGBO(30, 30, 30, 1),
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
                          width: 250,
                          child: Text(
                            "My Shopping Cart",
                            style: GoogleFonts.allertaStencil(
                                fontWeight: FontWeight.w500,
                                fontSize: 30,
                                color: const Color.fromRGBO(255, 255, 255, 1)),
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
                          SizedBox(
                            child: ListView.builder(
                                itemCount: cart.length,
                                shrinkWrap: true,
                                itemBuilder: ((context, index) {
                                  return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, bottom: 10),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                gradient: const LinearGradient(
                                                    colors: [
                                                      Color.fromRGBO(
                                                          53, 63, 84, 0.6),
                                                      Color.fromRGBO(
                                                          34, 40, 52, 0),
                                                    ]),
                                              ),
                                              child: Image.asset(
                                                  cart[index]["image"]),
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "${cart[index]["name"]}",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: const Color
                                                            .fromRGBO(
                                                            255, 255, 255, 1)),
                                                  ),
                                                  const SizedBox(
                                                    height: 30,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "${cart[index]["price"]}",
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: const Color
                                                                    .fromRGBO(
                                                                    55,
                                                                    182,
                                                                    233,
                                                                    1)),
                                                      ),
                                                      const Spacer(),
                                                      Container(
                                                        decoration: BoxDecoration(
                                                            color: const Color
                                                                .fromRGBO(30,
                                                                30, 30, 0.8),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6),
                                                            boxShadow: const [
                                                              BoxShadow(
                                                                offset: Offset(
                                                                    0, 1),
                                                                blurRadius: 3,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        .5),
                                                              ),
                                                            ]),
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              margin:
                                                                  const EdgeInsets
                                                                      .all(6),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              3),
                                                                      gradient:
                                                                          const LinearGradient(
                                                                        colors: [
                                                                          Color.fromRGBO(
                                                                              55,
                                                                              182,
                                                                              233,
                                                                              1),
                                                                          Color.fromRGBO(
                                                                              72,
                                                                              92,
                                                                              236,
                                                                              1),
                                                                          Color.fromRGBO(
                                                                              75,
                                                                              76,
                                                                              237,
                                                                              1),
                                                                        ],
                                                                      )),
                                                              child: const Icon(
                                                                Icons.add,
                                                                size: 15,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        1),
                                                              ),
                                                            ),
                                                            Text(
                                                              "1",
                                                              style: GoogleFonts.poppins(
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: const Color
                                                                      .fromRGBO(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      1)),
                                                            ),
                                                            Container(
                                                              margin:
                                                                  const EdgeInsets
                                                                      .all(6),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              3),
                                                                      gradient:
                                                                          const LinearGradient(
                                                                        colors: [
                                                                          Color.fromRGBO(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              0.8),
                                                                          Color.fromRGBO(
                                                                              195,
                                                                              195,
                                                                              195,
                                                                              0.2),
                                                                        ],
                                                                      )),
                                                              child: const Icon(
                                                                Icons.remove,
                                                                size: 15,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        1),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, .3))),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      )
                                    ],
                                  );
                                })),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Your Bag Qualifies for Free Shipping",
                            style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(255, 255, 255, 1)),
                          ),
                          SizedBox(
                            // height: 50,
                            child: ListView.builder(
                              itemCount: paymentData.length,
                              shrinkWrap: true,
                              itemBuilder: ((context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        "${paymentData[index]["name"]}",
                                        style: GoogleFonts.poppins(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1)),
                                      ),
                                      const Spacer(),
                                      Text(
                                        "${paymentData[index]["price"]}",
                                        style: GoogleFonts.poppins(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromRGBO(
                                                55, 182, 233, 1)),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                  // const Spacer(),
                  //  Row(
                  //                     mainAxisAlignment: MainAxisAlignment.center,
                  //                     children: [
                  //                       Container(
                  //     padding: const EdgeInsets.all(5),
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(10),
                  //         gradient: const LinearGradient(
                  //           colors: [
                  //             Color.fromRGBO(55, 182, 233, 1),
                  //             Color.fromRGBO(72, 92, 236, 1),
                  //             Color.fromRGBO(75, 76, 237, 1),
                  //           ],
                  //         )),
                  //     child: const Icon(
                  //       Icons.arrow_forward_ios_outlined,
                  //       color: Color.fromRGBO(255, 255, 255, 1),
                  //     ),
                  //                       ),
                  //                       const SizedBox(
                  //     width: 15,
                  //                       ),
                  //                       Text(
                  //     "Check Out",
                  //     style: GoogleFonts.poppins(
                  //         fontSize: 20,
                  //         fontWeight: FontWeight.w500,
                  //         color: const Color.fromRGBO(255, 255, 255, 1)),
                  //                       ),
                  //                     ],
                  //                   ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
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
                    Icons.arrow_forward_ios_outlined,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Check Out",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(255, 255, 255, 1)),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
