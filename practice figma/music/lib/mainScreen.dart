import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music/musicScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => HomeScreenState();
}

List<Map> dataDisco = [
  {
    "image":"images/Rectangle 32.png",
    "name" :"Dead Inside",
    "year":"2023",
  },
  {
    "image":"images/Rectangle 38.png",
    "name" :"Alone",
    "year":"2023",
  },
  {
    "image":"images/Rectangle 39.png",
    "name" :"Heartless",
    "year":"2023",
  },
  {
    "image":"images/Rectangle 32.png",
    "name" :"Dead Inside",
    "year":"2023",
  },
  {
    "image":"images/Rectangle 38.png",
    "name" :"Alone",
    "year":"2023",
  },
  {
    "image":"images/Rectangle 39.png",
    "name" :"Heartless",
    "year":"2023",
  },

];

class HomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 375,
              width: 460,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/img1.png"),
                    alignment: Alignment.topCenter),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "A.L.O.N.E",
                      style: GoogleFonts.inter(
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 7, bottom: 7, left: 25, right: 25),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: Color.fromRGBO(255, 46, 0, 1)),
                      child: Text(
                        "Subscribe",
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          color: const Color.fromRGBO(19, 19, 19, 1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Discography",
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(255, 46, 0, 1))),
                      const Spacer(),
                      Text("See all",
                          style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(248, 162, 69, 1))),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 207,
                    child: ListView.builder(
                      itemCount: dataDisco.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MusicScreen()));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 160,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      image:  DecorationImage(
                                          image: AssetImage(
                                              "${dataDisco[index]["image"]}")),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${dataDisco[index]["name"]}",
                                  style: GoogleFonts.inter(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          203, 200, 200, 1)),
                                ),
                                // const SizedBox(
                                //   height: 10,
                                // ),
                                Text(
                                  "${dataDisco[index]["year"]}",
                                  style: GoogleFonts.inter(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          132, 125, 125, 1)),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text("Popular singlesy",
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(203, 200, 200, 1))),
                      const Spacer(),
                      Text("See all",
                          style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(248, 162, 69, 1))),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                  SizedBox(
                    child: ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: dataDisco.length,
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MusicScreen(),
                                  ),
                                );
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image:  DecorationImage(
                                            image: AssetImage(
                                                "${dataDisco[index]["image"]}")),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${dataDisco[index]["name"]}",
                                        style: GoogleFonts.inter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: const Color.fromRGBO(
                                                203, 200, 200, 1)),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "2023 ",
                                            style: GoogleFonts.inter(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                    132, 125, 125, 1)),
                                          ),
                                          Text(
                                            "*",
                                            style: GoogleFonts.inter(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                    203, 200, 200, 1)),
                                          ),
                                          Text(
                                            " Easy Living",
                                            style: GoogleFonts.inter(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                    132, 125, 125, 1)),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  const Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Icon(
                                        Icons.more_vert_outlined,
                                        size: 35,
                                        color: Color.fromRGBO(217, 217, 217, 1),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        })),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color.fromRGBO(157, 178, 206, 1),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedLabelStyle: GoogleFonts.abel(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: const Color.fromRGBO(157, 178, 206, 1),
        ),
        // showSelectedLabels: true,
        fixedColor: const Color.fromRGBO(248, 162, 69, 1),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Color.fromRGBO(157, 178, 206, 1),
            ),
            label: "Favorate",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              color: Color.fromRGBO(157, 178, 206, 1),
              Icons.search_outlined,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              color: Color.fromRGBO(157, 178, 206, 1),
              Icons.home_outlined,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              color: Color.fromRGBO(157, 178, 206, 1),
              Icons.card_giftcard,
            ),
            label: "cards",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
              color: Color.fromRGBO(157, 178, 206, 1),
            ),
            label: "Info",
          ),
        ],
      ),
    );
  }
}
