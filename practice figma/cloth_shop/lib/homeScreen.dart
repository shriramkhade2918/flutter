import 'dart:ui';

import 'package:cloth_shop/cartScreen.dart';
import 'package:cloth_shop/details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State createState() => HomeScreenState();
}

List<Map> cloth = [
  {
    "image": "images/home/Rectangle 981.png",
    "name": "Tagerine Shirt",
  },
  {
    "image": "images/home/Rectangle 980.png",
    "name": "Leather Coart",
  },
  {
    "image": "images/home/Rectangle 980 (1).png",
    "name": "Leather Coart",
  },
  {
    "image": "images/home/Rectangle 981 (1).png",
    "name": "Tagerine Shirt",
  },
];
List<Map> data = [
  {"name": "All", "color": const Color.fromRGBO(255, 122, 0, 1)},
  {"name": "Men", "color": const Color.fromRGBO(255, 255, 255, 1)},
  {"name": "Women", "color": const Color.fromRGBO(255, 255, 255, 1)},
  {"name": "Kids", "color": const Color.fromRGBO(255, 255, 255, 1)},
  {"name": "Other", "color": const Color.fromRGBO(255, 255, 255, 1)},
];

class HomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Icon(
                  Icons.border_all_rounded,
                  size: 35,
                ),
                Spacer(),
                Icon(
                  Icons.account_circle_outlined,
                  size: 35,
                ),
              ],
            ),
            Text(
              "Explore",
              style: GoogleFonts.imprima(
                  fontSize: 38,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(13, 13, 14, 1)),
            ),
            Text(
              "Best trendy collection!",
              style: GoogleFonts.imprima(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(121, 119, 128, 1)),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              child: ListView.builder(
                itemCount: data.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 5,
                    bottom: 10,
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: data[index]["color"],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "${data[index]["name"]}",
                    style: GoogleFonts.imprima(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(13, 13, 14, 1)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SizedBox(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: cloth.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      mainAxisExtent: 250,
                      crossAxisSpacing: 20,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Details(),
                          ),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const SizedBox(
                          //   height: 10,
                          // ),
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Image.asset(cloth[index]["image"]),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 110, left: 95),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.all(3),
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                    child: const Icon(
                                      Icons.shopping_bag_outlined,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Text(
                            "\$240.32",
                            style: GoogleFonts.imprima(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(13, 13, 14, 1)),
                          ),
                          Text(
                            "${cloth[index]["name"]}",
                            style: GoogleFonts.imprima(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(121, 119, 128, 1)),
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
      ),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedLabelStyle: GoogleFonts.imprima(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(13, 13, 14, 1),
          ),
          unselectedItemColor: const Color.fromRGBO(13, 13, 14, 1),
          fixedColor: const Color.fromRGBO(13, 13, 14, 1),
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CartScreen(),
                      ),
                    );
                  },
                  child: const Icon(Icons.card_travel)),
              label: "cart",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: "Setting",
            ),
          ]),
    );
  }
}
