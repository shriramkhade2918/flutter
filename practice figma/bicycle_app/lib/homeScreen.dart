import 'package:bicycle_app/infoScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => HomeScreenState();
}

List<Map> data = [
  {
    "image": "images/Home/icon/image 2.png",
    "color": [
      const Color.fromRGBO(55, 182, 233, 1),
      const Color.fromRGBO(73, 84, 237, 1),
      const Color.fromRGBO(75, 76, 237, 1)
    ],
  },
  {
    "image": "images/Home/icon/image 1.png",
    "color": [
      const Color.fromRGBO(255, 255, 255, 1),
      const Color.fromRGBO(161, 161, 161, 1),
    ],
  },
  {
    "image": "images/Home/icon/image 3.png",
    "color": [
      const Color.fromRGBO(255, 255, 255, 1),
      const Color.fromRGBO(161, 161, 161, 1),
    ],
  },
  {
    "image": "images/Home/icon/image 4.png",
    "color": [
      const Color.fromRGBO(255, 255, 255, 1),
      const Color.fromRGBO(161, 161, 161, 1),
    ],
  },
];

class HomeScreenState extends State {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    SizedBox(
                      width: 250,
                      child: Text(
                        "Choose Your Bicycle",
                        style: GoogleFonts.allertaStencil(
                            fontWeight: FontWeight.w500,
                            fontSize: 32,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    const Spacer(),
                    Container(
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
                        Icons.search,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                   
                  ],
                ),
              ),
              Stack(
                // alignment: AlignmentDirectional.centerEnd,
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
                              fontSize: 150,
                              color: const Color.fromRGBO(255, 255, 255, 0.03)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            height: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(53, 63, 84, 0.6),
                                  Color.fromRGBO(34, 40, 52, 0.6),
                                ],
                              ),
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(4, 7),
                                    blurRadius: 10,
                                    color: Color.fromRGBO(0, 0, 0, .5))
                              ],
                            ),
                            child: Row(
                              children: [
                                Image.asset("images/Home/pngwing.png"),
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "EXTREME",
                                      style: GoogleFonts.allertaStencil(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 24,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1)),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "30% OFF",
                                      style: GoogleFonts.allertaStencil(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 27,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1)),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 60,
                                child: ListView.builder(
                                  itemCount: data.length,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: ((context, index) => Padding(
                                        padding: const EdgeInsets.only(right: 15),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            gradient: LinearGradient(
                                                colors: data[index]["color"]),
                                          ),
                                          child:
                                              Image.asset(data[index]["image"]),
                                        ),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          child: GridView.builder(
                            // controller: FixedExtentScrollController(),
                            itemCount: bicycle.length,
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: 251,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                              crossAxisCount: 2,
                            ),
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Information()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: const LinearGradient(colors: [
                                    Color.fromRGBO(53, 63, 84, 0.6),
                                    Color.fromRGBO(34, 40, 52, 0.6),
                                  ]),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(bicycle[index]["image"]),
                                      Text(
                                        "Road Bike",
                                        style: GoogleFonts.allertaStencil(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            color: const Color.fromRGBO(
                                                195, 195, 195, 1)),
                                      ),
                                      Text(
                                        "${bicycle[index]["name"]}",
                                        style: GoogleFonts.allertaStencil(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1)),
                                      ),
                                      Text(
                                        "${bicycle[index]["price"]}",
                                        style: GoogleFonts.allertaStencil(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            color: const Color.fromRGBO(
                                                195, 195, 195, 1)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Color.fromRGBO(36, 44, 59, 1),
              icon: Icon(
                size: 35,
                Icons.home_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: 35,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet_giftcard_outlined,
                size: 35,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 35,
              ),
              label: ""),
        ],
      ),
    );
  }
}

List<Map> bicycle = [
  {
    "name": "Kiross",
    "image": "images/Home/pngwing (1).png",
    "price": "\$1,599.99",
  },
  {
    "name": "GT Bike",
    "image": "images/Home/pngwing (2).png",
    "price": "\$2,599.99",
  },
  {
    "name": "Kiross",
    "image": "images/Home/pngwing (3).png",
    "price": "\$1,599.99",
  },
  {
    "name": "GT Bike",
    "image": "images/Home/pngwing (4).png",
    "price": "\$2,599.99",
  },
  {
    "name": "Kiross",
    "image": "images/Home/pngwing (1).png",
    "price": "\$1,599.99",
  },
  {
    "name": "GT Bike",
    "image": "images/Home/pngwing (2).png",
    "price": "\$2,599.99",
  },
  {
    "name": "Kiross",
    "image": "images/Home/pngwing (3).png",
    "price": "\$1,599.99",
  },
  {
    "name": "GT Bike",
    "image": "images/Home/pngwing (4).png",
    "price": "\$2,599.99",
  },
];
