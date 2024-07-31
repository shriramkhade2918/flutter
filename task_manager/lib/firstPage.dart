import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/loginPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => HomePageState();
}

class HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 220, 206),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>const LoginPage()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "TO-DO",
                      style: GoogleFonts.lobster(
                          fontSize: 100,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 228, 141, 18)),
                    ),
                    Text(
                      "App",
                      style: GoogleFonts.lobster(
                          fontSize: 100,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 228, 141, 18)),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
