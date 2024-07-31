import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key});

  @override
  State createState() => DoctorDetailsState();
}

class DoctorDetailsState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: const Icon(
                          Icons.navigate_before,
                          color: Color.fromRGBO(245, 146, 69, 1),
                          size: 35,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Veterinary",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(255, 255, 255, 1)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 220,
                  width: 450,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("image/doctor/imj.png"),
                          fit: BoxFit.cover)),
                  // child: Image.asset("")
                ),
                // const SizedBox(
                //   height: 15,
                // )
              ],
            ),
          ),
          Expanded(
            // flex: 55,
            child: Container(
              width: 460,
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(239, 235, 235, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Dr. Anna Johanson",
                          style: GoogleFonts.poppins(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            // color:Color.fromRGBO(r, g, b, opacity)
                          ),
                        ),
                        Text(
                          "Veterinary Behavioral",
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(194, 195, 204, 1)),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 70,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    boxShadow: const [
                                      BoxShadow(
                                          offset: Offset(0, 4),
                                          blurRadius: 8,
                                          spreadRadius: -4,
                                          color:
                                              Color.fromRGBO(22, 34, 51, 0.08))
                                    ]),
                                child: Column(
                                  children: [
                                    Text(
                                      "Experience",
                                      style: GoogleFonts.poppins(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromRGBO(
                                              31, 32, 41, 1)),
                                    ),
                                    Text(
                                      "11 Years",
                                      style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: const Color.fromRGBO(
                                              245, 146, 69, 1)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "About",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            // color:Color.fromRGBO(r, g, b, opacity)
                          ),
                        ),
                        Text(
                          "Dr. Maria Naiis is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro...",
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(194, 195, 204, 1)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    "Available Days",
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      // color:Color.fromRGBO(r, g, b, opacity)
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Icon(
                                    Icons.calendar_today_outlined,
                                    color: Color.fromRGBO(245, 146, 69, 1),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "October, 2023",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(
                                            194, 195, 204, 1)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 45,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                              ),
                              child: Container(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                  left: 20,
                                  right: 20,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    border: Border.all(
                                        color: const Color.fromRGBO(
                                            245, 146, 69, 1)),
                                    boxShadow: const [
                                      BoxShadow(
                                          offset: Offset(0, 4),
                                          blurRadius: 8,
                                          spreadRadius: -4,
                                          color:
                                              Color.fromRGBO(22, 34, 51, 0.08))
                                    ]),
                                child: Column(
                                  children: [
                                    Text(
                                      "Fri, 6",
                                      style: GoogleFonts.poppins(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromRGBO(
                                              31, 32, 41, 1)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              "Available Time",
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                // color:Color.fromRGBO(r, g, b, opacity)
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 45,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                              ),
                              child: Container(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                  left: 20,
                                  right: 20,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    border: Border.all(
                                        color: const Color.fromRGBO(
                                            245, 146, 69, 1)),
                                    boxShadow: const [
                                      BoxShadow(
                                          offset: Offset(0, 4),
                                          blurRadius: 8,
                                          spreadRadius: -4,
                                          color:
                                              Color.fromRGBO(22, 34, 51, 0.08))
                                    ]),
                                child: Column(
                                  children: [
                                    Text(
                                      "Fri, 6",
                                      style: GoogleFonts.poppins(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromRGBO(
                                              31, 32, 41, 1)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(252, 219, 193, 1)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.map_outlined,
                          color: Color.fromRGBO(163, 97, 46, 1),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "See Location",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(163, 97, 46, 1)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(245, 146, 69, 1)),
                    child: Text(
                      "Book Now",
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
