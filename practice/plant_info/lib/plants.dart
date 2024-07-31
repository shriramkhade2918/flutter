import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import "package:google_fonts/google_fonts.dart";

class Plants extends StatefulWidget {
  const Plants({super.key});

  @override
  State createState() => _PlantsState();
}

class _PlantsState extends State {
  int count = 0;
  List color = [
    const Color.fromRGBO(62, 102, 24, 1),
    const Color.fromRGBO(197, 214, 181, 1),
    const Color.fromRGBO(197, 214, 181, 1),
  ];
  List<Map> plantInfo = [
    {
      "image": "images/arrow up.png",
      "para": "Height",
      "info": "30cm-40cm",
    },
    {
      "image": "images/thermometer.png",
      "para": "Temperature",
      "info": "20’C-25’C",
    },
    {
      "image": "images/PlantIcon1.png",
      "para": "Pot",
      "info": "Ciramic Pot",
    }
  ];
  Scaffold plantScaffold() {
    if (count == 0) {
      return Scaffold(
        body: Column(
          children: [           
            const SizedBox(
              height: 10,
            ),
            const Image(
                image: AssetImage(
              "images/plant1.png",
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enjoy your ",
                      style: GoogleFonts.getFont('Poppins',
                          fontWeight: FontWeight.w400, fontSize: 34.22),
                    ),
                    Row(
                      children: [
                        Text(
                          "life with ",
                          style: GoogleFonts.getFont('Poppins',
                              fontWeight: FontWeight.w400, fontSize: 34.22),
                        ),
                        Text(
                          "Plants",
                          style: GoogleFonts.getFont('Poppins',
                              fontWeight: FontWeight.w600, fontSize: 34.22),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                count++;
                setState(() {});
              },
              child: Container(
                height: 50,
                width: 320,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(62, 102, 24, 1),
                      Color.fromRGBO(124, 180, 70, 1)
                    ]),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          offset: Offset(0, 20),
                          blurRadius: 40)
                    ]),
                child: Center(
                  child: Text(
                    "Get Started >",
                    style: GoogleFonts.rubik(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color:const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
              ),
            ),
           
          ],
        ),
      );
    } else if (count == 1) {
      return Scaffold(
          body: SingleChildScrollView(
            child: Container(
                    decoration: const BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topLeft,
                  image: AssetImage(
                    "images/Group 5314.png",
                  ))),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    
            const SizedBox(
              height: 120,
            ),
            SizedBox(
              child: Text(
                "Log in",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    // height: 45,
                    color:const Color.fromRGBO(0, 0, 0, 1)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: TextField(
                maxLength: 10,
                decoration: InputDecoration(
                  counterText: "",
                    prefixIcon: const Icon(Icons.call_outlined),
                    hintText: "Mobile Number",
                    border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                count++;
                setState(() {});
              },
              child: Container(
                height: 60,
                width: 320,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(62, 102, 24, 1),
                      Color.fromRGBO(124, 180, 70, 1)
                    ]),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          offset: Offset(0, 20),
                          blurRadius: 40)
                    ]),
                child: Center(
                  child: Text(
                    "Log in",
                    style: GoogleFonts.rubik(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
              ),
            ),
            Image.asset(
              "images/plant2.png",
              // height: 420,
              // width: 420,
            ),
                    
                     
                    ],),
                  ),
          ));
    } else if (count == 2) {
      return Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.topRight,
                image: AssetImage(
                  "images/Group 5315.png",
                ),),),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
         
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    count--;
                    setState(() {
                      
                    });
                  },
                  child: SizedBox(
                    height: 12,
                    width: 16,
                    child: Image.asset("images/Vector (Stroke).png"),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  child: Text(
                    "Verification",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        // height: 45,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 46,
                  width: 272,
                  child: Text(
                    "Enter the OTP code from the phone we just sent you.",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        // height: 45,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 56,
                  width: 380,
                  child: ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 30, left: 7),
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.06),
                                    offset: Offset(0, 8),
                                    blurRadius: 20)
                              ],
                              border: Border.all(
                                  width: 1,
                                  color:
                                      const Color.fromRGBO(204, 211, 196, 1)),
                              borderRadius: BorderRadius.circular(8)),
                          child: const TextField(
                            maxLength: 1,

                            obscuringCharacter: " ",
                            // enabled: false,
                            decoration: InputDecoration(
                                counterText: "", border: OutlineInputBorder(),),
                          ),
                        );
                      })),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 23,
                  // width: 221,
                  child: Row(
                    children: [
                      Text(
                        "Don’t receive OTP code! ",
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Resend",
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    count++;
                    setState(() {});
                  },
                  child: Container(
                    height: 60,
                    width: 350,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(62, 102, 24, 1),
                          Color.fromRGBO(124, 180, 70, 1)
                        ]),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              offset: Offset(0, 20),
                              blurRadius: 40)
                        ]),
                    child: Center(
                      child: Text(
                        "Submit",
                        style: GoogleFonts.rubik(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
         
        ]),
      ));
    } else if (count == 3) {
      return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/Mask group.png"),
                  alignment: Alignment.topRight)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            
            const SizedBox(
              height: 60,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  child: Padding(
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
                                color:const Color.fromRGBO(0, 0, 0, 1))),
                        SizedBox(
                          height: 188,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: color.length,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: GestureDetector(
                                onTap: () {
                                  count++;
                                  setState(() {});
                                },
                                child: Container(
                                  height: 188,
                                  width: 141,
                                  decoration: BoxDecoration(
                                    // borderRadius:BorderRadius.circular(9.4),
                                    color:const Color.fromRGBO(255, 255, 255, 1),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.06),
                                          offset: Offset(0, 7.52),
                                          blurRadius: 18.8)
                                    ],
                                    // shape: BoxShape.circle,
                                    borderRadius: BorderRadius.circular(9.4),
                                    // color: color[index],
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                          "images/136722116_a0b8a27e-7bb5-4535-b3fe-d1dcdb5caf6d 1.png"),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "Snake Plants",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.dmSans(
                                                fontSize: 13.16,
                                                fontWeight: FontWeight.w400),
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
                                          Text(
                                            "₹350",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.poppins(
                                                fontSize: 16.92,
                                                fontWeight: FontWeight.w600,
                                                color:const
                                                    Color.fromRGBO(62, 102, 24, 1)),
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 26,
                                            width: 26,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                    Color.fromRGBO(237, 238, 235, 1)),
                                            child: Image.asset(
                                              "images/shopping-bag 3.png",
                                              height: 14,
                                              width: 14,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
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
                                  color: const Color.fromRGBO(204, 211, 196, 1))),
                        ),
                        Text("Outdoor",
                            // textAlign: Alignment.centerLeft,
                            style: GoogleFonts.poppins(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color:const Color.fromRGBO(0, 0, 0, 1))),
                        SizedBox(
                          height: 188,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: color.length,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: GestureDetector(
                                onTap: () {
                                  count++;
                                  setState(() {});
                                },
                                child: Container(
                                  height: 188,
                                  width: 141,
                                  decoration: BoxDecoration(
                                    // borderRadius:BorderRadius.circular(9.4),
                                    color:const Color.fromRGBO(255, 255, 255, 1),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.06),
                                          offset: Offset(0, 7.52),
                                          blurRadius: 18.8)
                                    ],
                                    // shape: BoxShape.circle,
                                    borderRadius: BorderRadius.circular(9.4),
                                    // color: color[index],
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                          "images/136722116_a0b8a27e-7bb5-4535-b3fe-d1dcdb5caf6d 1.png"),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "Snake Plants",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.dmSans(
                                                fontSize: 13.16,
                                                fontWeight: FontWeight.w400),
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
                                          Text(
                                            "₹350",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.poppins(
                                                fontSize: 16.92,
                                                fontWeight: FontWeight.w600,
                                                color:const
                                                    Color.fromRGBO(62, 102, 24, 1)),
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 26,
                                            width: 26,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                    Color.fromRGBO(237, 238, 235, 1)),
                                            child: Image.asset(
                                              "images/shopping-bag 3.png",
                                              height: 14,
                                              width: 14,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
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
                                  color: const Color.fromRGBO(204, 211, 196, 1))),
                        ),
                        Text("Medicinal",
                            // textAlign: Alignment.centerLeft,
                            style: GoogleFonts.poppins(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color:const Color.fromRGBO(0, 0, 0, 1))),
                        SizedBox(
                          height: 188,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: color.length,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: GestureDetector(
                                onTap: () {
                                  count++;
                                  setState(() {});
                                },
                                child: Container(
                                  height: 188,
                                  width: 141,
                                  decoration: BoxDecoration(
                                    // borderRadius:BorderRadius.circular(9.4),
                                    color:const Color.fromRGBO(255, 255, 255, 1),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.06),
                                          offset: Offset(0, 7.52),
                                          blurRadius: 18.8)
                                    ],
                                    // shape: BoxShape.circle,
                                    borderRadius: BorderRadius.circular(9.4),
                                    // color: color[index],
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                          "images/136722116_a0b8a27e-7bb5-4535-b3fe-d1dcdb5caf6d 1.png"),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "Snake Plants",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.dmSans(
                                                fontSize: 13.16,
                                                fontWeight: FontWeight.w400),
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
                                          Text(
                                            "₹350",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.poppins(
                                                fontSize: 16.92,
                                                fontWeight: FontWeight.w600,
                                                color:const
                                                    Color.fromRGBO(62, 102, 24, 1)),
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 26,
                                            width: 26,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                    Color.fromRGBO(237, 238, 235, 1)),
                                            child: Image.asset(
                                              "images/shopping-bag 3.png",
                                              height: 14,
                                              width: 14,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
           
          ]),
        ),
      );
    } else if (count == 4) {
      return Scaffold(
          body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      
        const SizedBox(
          height: 60,
        ),
        Expanded(
          child: SizedBox(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        count--;
                        setState(() {});
                      },
                      child: SizedBox(
                        height: 24,
                        width: 24,
                        child: Image.asset("images/Group 5475.png"),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "images/plant4.png",
                              height: 250,
                              width: 200,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 8,
                              width: 40,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: color.length,
                                itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Container(
                                    height: 8,
                                    width: 8,
                                    decoration: BoxDecoration(
                                        color: color[index], shape: BoxShape.circle),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Snake Plants",
                      style: GoogleFonts.poppins(
                          fontSize: 28, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 45,
                      width: 300,
                      child: Text(
                        "Plansts make your life with minimal and happy love the plants more and enjoy life.",
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Container(
                        height: 220,
                        // width: 360,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(118, 152, 75, 1),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 74,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      itemCount: plantInfo.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.only(
                                              right: 25, left: 15),
                                          child: SizedBox(
                                            // height: 74,
                                            // width: 64,
                                            child: Column(
                                              children: [
                                                Image.asset(plantInfo[index]["image"]),
                                                Text(
                                                  plantInfo[index]["para"],
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                  ),
                                                ),
                                                Text(
                                                  plantInfo[index]["info"],
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color.fromRGBO(
                                                        255, 255, 255, 0.6),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Total Price",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 0.8)),
                                      ),
                                      Text(
                                        "₹ 350",
                                        style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 0.8)),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 60,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.06),
                                      color: const Color.fromRGBO(103, 133, 74, 1),
                                    ),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset("images/shopping-bag.png"),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "Add to cart",
                                          style: GoogleFonts.rubik(
                                              fontSize: 14.52,
                                              fontWeight: FontWeight.w500,
                                              color:const  Color.fromRGBO(255, 255, 255, 1)),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            
                          ],
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
          ),
        ),
        
      ]));
    } else {
      return const Scaffold();
    }
  }

  @override
  Widget build(BuildContext context) {
    return plantScaffold();
  }
}
