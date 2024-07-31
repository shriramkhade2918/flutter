import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Training extends StatefulWidget {
  const Training({super.key});
  @override
  State createState() => TrainingState();
}

class TrainingState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 243, 243),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(245, 146, 69, 1),
                      ),
                      child: const Icon(
                        Icons.navigate_before,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        size: 35,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Training",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(31, 32, 41, 1)),
                        )
                      ],
                    ),
                  )
                ],
              ),
              
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      child: ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: 10,
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: GestureDetector(
                              onTap: () {},
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
                                                  "image/Training/Frame 2061.png"))),
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
                                          "Obedience Courses",
                                          style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            // color:Color.fromRGBO(r, g, b, opacity)
                                          ),
                                        ),
                                        Text(
                                          "By Jhon Smith",
                                          style: GoogleFonts.poppins(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromRGBO(
                                                  31, 32, 41, 1)),
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
                                            Text(
                                              "(350)",
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
