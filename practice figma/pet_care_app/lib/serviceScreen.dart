import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/doctorDetailsScreen.dart';
import 'package:pet_care_app/gromingScreen.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State createState() => ServicesState();
}

class ServicesState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "London, UK",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(194, 195, 204, 1)),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, top: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(245, 146, 69, 1),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 8),
                        color: Color.fromRGBO(22, 34, 51, 0.08),
                        blurRadius: 16,
                        spreadRadius: -4,
                      )
                    ]),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        child: Text(
                          "Lets Find Specialist Doctor for Your Pet!",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    ),
                    Container(
                      height: 85,
                      width: 95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage("image/doctor/image.png"),
                              fit: BoxFit.fill)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
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
              Row(
                children: [
                  Text(
                    "Our Services",
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
                height: 10,
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
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Groming()));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 65,
                              width: 65,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "image/doctor/image (1).png"),
                                      fit: BoxFit.fill)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Vaccinations",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(245, 146, 69, 1)),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Best Specialists Nearby",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      // color:Color.fromRGBO(r, g, b, opacity)
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DoctorDetails(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 8),
                                blurRadius: 16,
                                spreadRadius: -4,
                                color: Color.fromRGBO(22, 34, 51, 0.08),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "image/doctor/image (5).png"))),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Dr. Anna Johanson",
                                    style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      // color:Color.fromRGBO(r, g, b, opacity)
                                    ),
                                  ),
                                  Text(
                                    "Veterinary Behavioral",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(
                                            194, 195, 204, 1)),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star_border_outlined,
                                        color: Color.fromRGBO(248, 182, 131, 1),
                                      ),
                                      Text(
                                        " 4.9   ",
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                194, 195, 204, 1)),
                                      ),
                                      const Icon(
                                        Icons.location_on_outlined,
                                        color: Color.fromRGBO(248, 182, 131, 1),
                                      ),
                                      Text(
                                        "1.5 km",
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                194, 195, 204, 1)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
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
              onPressed: () {},
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
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
