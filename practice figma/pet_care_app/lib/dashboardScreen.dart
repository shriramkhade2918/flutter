import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/notificationScreen.dart';
import 'package:pet_care_app/serviceScreen.dart';
import 'package:pet_care_app/shopScreen.dart';
import 'package:pet_care_app/traininScreen.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State createState() => DashBoardState();
}

class DashBoardState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 243, 243),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("image/image.png"),
                          fit: BoxFit.fill)),
                ),
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
                        // color:Color.fromRGBO(r, g, b, opacity)
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Good Morning!",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, .5)),
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
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AppNotification(),
                            ));
                      },
                      child: const Icon(
                        Icons.notifications_active_outlined,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 5,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
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
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 8),
                        blurRadius: 18,
                        spreadRadius: -4,
                        color: Color.fromRGBO(22, 34, 51, 0.08))
                  ]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        "In Love With Pets?",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          // color:Color.fromRGBO(r, g, b, opacity)
                        ),
                      ),
                      Text(
                        "Get all what you need for them",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(245, 146, 69, 1)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 100,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage("image/imj.png"),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Category",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    // color:Color.fromRGBO(r, g, b, opacity)
                  ),
                ),
                const Spacer(),
                Text(
                  "See All",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(249, 170, 170, 176)),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("image/image (1).png"),
                                  fit: BoxFit.fill)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Veterinary",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            // color:Color.fromRGBO(r, g, b, opacity)
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            Row(
              children: [
                Text(
                  "Event",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    // color:Color.fromRGBO(r, g, b, opacity)
                  ),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 8),
                        blurRadius: 18,
                        spreadRadius: -4,
                        color: Color.fromRGBO(22, 34, 51, 0.08))
                  ]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        """Find and Join in Special""",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          // color:Color.fromRGBO(r, g, b, opacity)
                        ),
                      ),
                      Text(
                        "Events For Your Pets!",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          // color: const Color.fromRGBO(245, 146, 69, 1),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 5,
                          bottom: 5,
                          left: 15,
                          right: 15,
                        ),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(245, 146, 69, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "See More",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 100,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage("image/image (5).png"),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "Community",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    // color:Color.fromRGBO(r, g, b, opacity)
                  ),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 8),
                        blurRadius: 18,
                        spreadRadius: -4,
                        color: Color.fromRGBO(22, 34, 51, 0.08))
                  ]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Connect and share with ",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          // color:Color.fromRGBO(r, g, b, opacity)
                        ),
                      ),
                      Text(
                        "communities!",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          // color: const Color.fromRGBO(245, 146, 69, 1),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 5,
                          bottom: 5,
                          left: 15,
                          right: 15,
                        ),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(245, 146, 69, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "See More",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 100,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage("image/image (6).png"),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
          ],
        ),
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
                onTap: () {
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context)=>const Training()),
                  );
                },
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
