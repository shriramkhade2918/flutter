import 'package:flutter/material.dart';
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
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        height: 32,
        width: 415,
        color: const Color.fromRGBO(123, 123, 123, 1),
      ),
      const SizedBox(
        height: 50,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: Image.asset("images/Group 5475.png"),
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
            Container(
              height: 200,
              width: 370,
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
                                  right: 30,
                                  left: 15
                                ),
                                child: SizedBox(
                                  // height: 74,
                                  // width: 64,
                                  child: Column(
                                    children: [
                                      Image.asset(plantInfo[index]["image"]),
                                      Text(plantInfo[index]["para"],
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color:const Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      ),
                                      Text(plantInfo[index]["info"],
                                      style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color:const Color.fromRGBO(255, 255, 255, 0.6),
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
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text("Total Price",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(255, 255, 255, 0.8)
                            ),),
                             Text("₹ 350",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(255, 255, 255, 0.8)
                            ),)
                          ],
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.06),
                            color:const  Color.fromRGBO(103, 133, 74, 1),
                            
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
                              Text("Add to cart",
                              style: GoogleFonts.rubik(
                                fontSize:14.52,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 1)
                              ),
                              )
                            ],
                          ),
                        )
                      ],
                      
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      const Spacer(),
      Container(
        height: 50,
        width: 415,
        color: const Color.fromRGBO(123, 123, 123, 1),
      )
    ]));
  }
}
// - images/thermometer.png
//     - images/shopping-bag.png
//     - images/arrow up.png
//     - images/Vector (4).png
List<Map> plantInfo = [
  {
    "image":"images/arrow up.png",
    "para":"Height",
    "info":"30cm-40cm",
  },
  {
    "image":"images/thermometer.png",
    "para":"Temperature",
    "info":"20’C-25’C",
  },
  {
    "image":"images/PlantIcon1.png",
    "para":"Pot",
    "info":"Ciramic Pot",
  }

];
