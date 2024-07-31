import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/detailsScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => HomeScreenState();
}

List<Map> dataHouse1 = [
  {
    'url':'image/home1.png',
    'name':'Night Hill Villa',
    'location':'London,Night Hill',
    'rent':'\$5900',

  },
  {
    'url':'image/home1.png',
    'name':'Night Villa',
    'location':'London,New Park',
    'rent':'\$4900 ',

  },
];

class HomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 238, 238),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Text(
                      "Hey Dravid,",
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(101, 101, 101, 1)),
                    ),
                    const Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("image/Ellipse 1.png"))),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              SizedBox(
                width: 250,
                child: Text(
                  '''Let’s find your best residence ''',
                  style: GoogleFonts.poppins(
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0, 0, 0, 1)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(255, 255, 255, 1),
                      prefixIcon: const Icon(Icons.search),
                      label: Text(
                        "Search your favourite paradise",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(33, 33, 33, 1)),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            style: BorderStyle.solid,
                            color: Colors.white,
                          )),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(255, 255, 255, 1)))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("Most Popular",
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1))),
                  const Spacer(),
                  Text(
                    "See All ",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(32, 169, 247, 1)),
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
              SizedBox(
                height: 310,
                child: ListView.builder(
                  itemCount: dataHouse1.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreen(),
                        ),
                      );
                    },
                    child: Container(
                        margin: const EdgeInsets.only(right: 20, top: 10),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              margin: const EdgeInsets.all(10),
                              height: 196,
                              width: 189,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image:  DecorationImage(
                                  image: AssetImage("${dataHouse1[index]["url"]}"),
                                ),
                              ),
                              child: Row(
                                children: [
                                  const Spacer(),
                                  Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            112, 200, 250, 1),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color:
                                              Color.fromRGBO(251, 227, 12, 1),
                                        ),
                                        Text(
                                          "3.9 ",
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${dataHouse1[index]["name"]}",
                                    style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "${dataHouse1[index]["locaion"]}",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(
                                            72, 72, 72, 1)),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "${dataHouse1[index]["rent"]}",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromRGBO(
                                                32, 169, 247, 1)),
                                      ),
                                      Text(
                                        " /Month",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromRGBO(
                                                72, 72, 72, 1)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("Nearby your location",
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1))),
                  const Spacer(),
                  Text(
                    "See All ",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(32, 169, 247, 1)),
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
              SizedBox(
                child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10, right: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DetailScreen(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                bottom: 0,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "image/home2.png"))),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Jumeriah Golf Estates Villa",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 1)),
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.location_on,
                                              size: 12,
                                            ),
                                            Text(
                                              "London,Area Plam Jumeriah",
                                              style: GoogleFonts.poppins(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.chair,
                                              size: 12,
                                            ),
                                            Text(
                                              " 4 Bedrooms ",
                                              style: GoogleFonts.poppins(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            const Icon(
                                              Icons.bathtub,
                                              size: 12,
                                            ),
                                            Text(
                                              " 5 Bathrooms",
                                              style: GoogleFonts.poppins(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            const Spacer(),
                                            Row(
                                              children: [
                                                Text(
                                                  "\$5900",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color:
                                                          const Color.fromRGBO(
                                                              32, 169, 247, 1)),
                                                ),
                                                Text(
                                                  " /Month",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color:
                                                          const Color.fromRGBO(
                                                              72, 72, 72, 1)),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
