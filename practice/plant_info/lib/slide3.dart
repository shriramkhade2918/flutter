import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Plants extends StatefulWidget {
  const Plants({super.key});

  @override
  State createState() => _PlantsState();
}

class _PlantsState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.topRight,
              image: AssetImage(
                "images/Group 5315.png",
              ))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                height: 12,
                width: 16,
                child: Image.asset("images/Vector (Stroke).png"),
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
                      color: Color.fromRGBO(0, 0, 0, 1)),
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
                      color:const Color.fromRGBO(0, 0, 0, 1)),
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
                        margin: const EdgeInsets.only(right: 35,left: 5),
                        height: 56,
                        width: 56,
                        decoration: BoxDecoration(
                          color:const Color.fromRGBO(255, 255, 255, 1),

                          boxShadow:const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.06),
                              offset: Offset(0, 8),
                              blurRadius: 20
                            )
                          ],
                            border: Border.all(
                              width: 1,
                              color:const Color.fromRGBO(204, 211, 196, 1)
                            ),
                            borderRadius: BorderRadius.circular(8)),
                            child:const TextField(
                              maxLength: 1,

                              obscuringCharacter: " ",
                              // enabled: false,
                              decoration: InputDecoration(
                                counterText: "",

                                border: OutlineInputBorder()
                              ),
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
                    Text("Don’t receive OTP code! ",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),
                    ),
                     Text("Resend",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),
                    )

                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 360,
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
            ],
          ),
        ),
        const Spacer(),
        Container(
          height: 50,
          width: 415,
          color: Color.fromRGBO(123, 123, 123, 1),
        )
      ]),
    ));
  }
}
