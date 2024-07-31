import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});
  @override
  State createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("Images/logo/Instagram Logo.png"),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(250, 250, 250, 1),
                      label: Text(
                        "Username",
                        style: GoogleFonts.notoSansTifinagh(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 0, 0, 0.2)),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: .5, color: Color.fromRGBO(0, 0, 0, 0.1)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      hoverColor: const Color.fromRGBO(250, 250, 250, 1),
                      filled: true,
                      fillColor: const Color.fromRGBO(250, 250, 250, 1),
                      label: Text(
                        "PassWord",
                        style: GoogleFonts.notoSansTifinagh(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 0, 0, 0.2)),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: .5, color: Color.fromRGBO(0, 0, 0, 0.1)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot password?",
                        style: GoogleFonts.notoSansTifinagh(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(55, 151, 239, 1)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 20),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Color.fromRGBO(55, 151, 239, 1),
                    ),
                    child: Text(
                      "Log in",
                      style: GoogleFonts.notoSansTifinagh(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
                Text(
                  "Switch accounts",
                  style: GoogleFonts.notoSansTifinagh(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(55, 151, 239, 1)),
                ),
              ],
            ),
          ),
          Container(
            // alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                boxShadow: [
                  BoxShadow(
                      // blurStyle: BlurStyle.outer,

                      offset: Offset(0, -.33),
                      color: Color.fromRGBO(60, 60, 67, 0.29))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: GoogleFonts.notoSansTifinagh(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, 0.4)),
                ),
                Text(
                  "Sign up.",
                  style: GoogleFonts.notoSansTifinagh(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(38, 38, 38, 1)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
