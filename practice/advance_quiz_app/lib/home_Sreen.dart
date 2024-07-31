import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

List<Map> data = [
  {
    "symbol":"M",
    "name":"Math",
    "color":const Color.fromRGBO(200, 60, 0, 1),

  },
  {
    "symbol":"H",
    "name":"Hestory",
    "color":const Color.fromRGBO(255, 157, 66, 1),

  },
  {
    "symbol":"G",
    "name":"Geography",
    "color":const Color.fromRGBO(3, 163, 134, 1),

  },
  {
    "symbol":"B",
    "name":"Biology",
    "color":const Color.fromRGBO(251, 43, 255, 1),

  },
  {
    "symbol":"S",
    "name":"Sports",
    "color":const Color.fromRGBO(45, 104, 255, 1),

  },
];

class _HomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // alignment: Alignment.topLeft,
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi Shri,",
                    style: GoogleFonts.dmSans(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(131, 76, 52, 1)),
                  ),
                  Text(
                    "Great to see you again!",
                    style: GoogleFonts.dmSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(131, 76, 52, 1)),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(250, 188, 154, 1)),
              ),
              const SizedBox(
                width: 20,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(255, 237, 217, 1),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            "${data[index]["symbol"]}",
                            style: GoogleFonts.dmSans(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: data[index]["color"],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "${data[index]["name"]}",
                          style: GoogleFonts.dmSans(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(200, 60, 0, 1)),
                        ),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios_rounded),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
