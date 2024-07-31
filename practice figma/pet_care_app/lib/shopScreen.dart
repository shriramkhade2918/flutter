import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/serviceScreen.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State createState() => ShopState();
}

class ShopState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: 160,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(245, 146, 69, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Hello, Sarah",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 1)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Find your lovable Pets",
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 1)),
                            )
                          ],
                        ),
                        const Spacer(),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.shopping_cart_outlined,
                                size: 30,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 125,
                right: 35,
                left: 35,
              ),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(255, 255, 255, 1),
                    suffixIcon: const Icon(
                      Icons.search,
                      size: 35,
                      color: Color.fromRGBO(250, 200, 162, 1),
                    ),
                    label: Text(
                      "Search",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(250, 200, 162, 1))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(250, 200, 162, 1)))),
              ),
            )
          ]),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SizedBox(
              child: GridView.builder(
                itemCount: 6,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: ((context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage("image/shop/Pet Shop.png"),
                                fit: BoxFit.fill)),
                      ),
                      // child: Image.asset("image/shop/Pet Shop.png"),
                    )),
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
              backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Shop()),
                );
              },
              child: const Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Icon(Icons.shopping_cart_outlined, color: Colors.white),
                  Text(
                    "Shop",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              )),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromRGBO(245, 146, 69, 1),
        // fixedColor:Color.fromRGBO(245, 146, 69, 1) ,
        selectedIconTheme:
            const IconThemeData(color: Color.fromRGBO(245, 146, 69, 1)),
        showUnselectedLabels: true,
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: const Color.fromRGBO(126, 128, 143, 1),
        ),
        unselectedItemColor: const Color.fromRGBO(126, 128, 143, 1),

        items: [
          BottomNavigationBarItem(
              icon: GestureDetector(
                child: const Icon(
                  Icons.home_outlined,
                  color: Color.fromRGBO(126, 128, 143, 1),
                  size: 34,
                ),
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Services(),
                      ));
                },
                child: const Icon(
                  Icons.favorite_border_outlined,
                  color: Color.fromRGBO(126, 128, 143, 1),
                  size: 34,
                ),
              ),
              label: "Service"),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
                color: Colors.white,
                size: 34,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.history,
                  color: Color.fromRGBO(126, 128, 143, 1),
                  size: 34,
                ),
              ),
              label: "History"),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.person_outline,
                  color: Color.fromRGBO(126, 128, 143, 1),
                  size: 34,
                ),
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
