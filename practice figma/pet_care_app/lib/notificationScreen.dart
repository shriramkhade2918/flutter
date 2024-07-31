import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppNotification extends StatefulWidget {
  const AppNotification({super.key});

  @override
  State createState() => NotificationState();
}

class NotificationState extends State {
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
                          "Notifications",
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
                child: SizedBox(
                  child: ListView.separated(
                    controller: ScrollController(),
                    scrollDirection: Axis.vertical,
                    physics: const PageScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,

                      // controller: FixedExtentScrollController(),

                      itemBuilder: (context, ind) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(22, 34, 51, 0.08),
                                  offset: Offset(0, 8),
                                  blurRadius: 16,
                                  spreadRadius: -4,
                                )
                              ]),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(252, 219, 193, 1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Icon(
                                  Icons.shopping_bag_outlined,
                                  color: Color.fromRGBO(245, 146, 69, 1),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: SizedBox(
                                  child: Text(
                                    "Your checkout is successfull, product is on tne way",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(
                                            31, 32, 41, 1)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => Row(
                      children: [
                        Text(
                          "Today",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(31, 32, 41, 1)),
                        )
                      ],
                    ),
                    itemCount: 5,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
