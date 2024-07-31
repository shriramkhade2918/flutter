import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Plants extends StatefulWidget {
  const Plants({super.key});

  @override
  State createState() => _PlantsState();
}

List color = [
  const Color.fromRGBO(62, 102, 24, 1),
  const Color.fromRGBO(197, 214, 181, 1),
  const Color.fromRGBO(197, 214, 181, 1),
];

class _PlantsState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/Mask group.png"),
                alignment: Alignment.topRight)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 32,
            width: 415,
            color: const Color.fromRGBO(123, 123, 123, 1),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      // height: 70,
                      width: 180,
                      child: Text(
                        "Find your favorite plants",
                        style: GoogleFonts.poppins(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Spacer(),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.15),
                                  offset: Offset(0, 4),
                                  blurRadius: 16.1)
                            ]),
                        child: Image.asset("images/shopping-bag 2.png")),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 110,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: 110,
                        width: 310,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(204, 231, 185, 1)),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "30% OFF",
                                  style: GoogleFonts.poppins(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "02-23 April",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Image.asset(
                                "images/83003846_Spider Plant- Chlorophytum Comosum -11 1.png")
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 8,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: color.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // borderRadius: BorderRadius.circular(10),
                                color: color[index],
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text("Indoor",
                // textAlign: Alignment.centerLeft,
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(0, 0, 0, 1)
                  )
                ),
                SizedBox(
                      height: 188,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: color.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            height: 188,
                            width: 141,
                            decoration: BoxDecoration(
                              // borderRadius:BorderRadius.circular(9.4),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              boxShadow:const  [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.06),
                                  offset:Offset(0, 7.52),
                                  blurRadius: 18.8
                                 
                                )
                              ],
                                // shape: BoxShape.circle,
                                borderRadius: BorderRadius.circular(9.4),
                                // color: color[index],
                                ),
                                child:Column(
                                  children: [
                                    Image.asset("images/136722116_a0b8a27e-7bb5-4535-b3fe-d1dcdb5caf6d 1.png"),
                                     const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Text("Snake Plants",
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.dmSans(
                                          fontSize: 13.16,
                                          fontWeight: FontWeight.w400
                                        ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Text("₹350",
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                          fontSize: 16.92,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(62, 102, 24, 1)
                                        ),
                                        ),
                                        const Spacer(),
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration:const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromRGBO(237, 238, 235, 1)
                                          ),
                                          child: Image.asset("images/shopping-bag 3.png",
                                          height: 14,
                                          width: 14,),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        )
                                      ],
                                    ),
                                   

                                  ],
                                ) ,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     Container(
                      width: 360,
                      decoration: BoxDecoration(
                        border: Border.all(
                        width: 1,
                        color:const Color.fromRGBO(204, 211, 196, 1)
                     )
                    ),
                  ),
                  Text("Outdoor",
                // textAlign: Alignment.centerLeft,
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(0, 0, 0, 1)
                  )
                ),
                SizedBox(
                      height: 188,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: color.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            height: 188,
                            width: 141,
                            decoration: BoxDecoration(
                              // borderRadius:BorderRadius.circular(9.4),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              boxShadow:const  [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.06),
                                  offset:Offset(0, 7.52),
                                  blurRadius: 18.8
                                 
                                )
                              ],
                                // shape: BoxShape.circle,
                                borderRadius: BorderRadius.circular(9.4),
                                // color: color[index],
                                ),
                                child:Column(
                                  children: [
                                    Image.asset("images/136722116_a0b8a27e-7bb5-4535-b3fe-d1dcdb5caf6d 1.png"),
                                     const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Text("Snake Plants",
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.dmSans(
                                          fontSize: 13.16,
                                          fontWeight: FontWeight.w400
                                        ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Text("₹350",
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                          fontSize: 16.92,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(62, 102, 24, 1)
                                        ),
                                        ),
                                        const Spacer(),
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration:const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromRGBO(237, 238, 235, 1)
                                          ),
                                          child: Image.asset("images/shopping-bag 3.png",
                                          height: 14,
                                          width: 14,),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        )
                                      ],
                                    ),
                                   

                                  ],
                                ) ,
                          ),
                        ),
                      ),
                    ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            
            height: 50,
            width: 415,
            color: const Color.fromRGBO(123, 123, 123, 1),
          )
        ]),
      ),
    );
  }
}

// List color = [];
