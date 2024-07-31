import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'register_screen.dart';
import 'tranjection_Screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State createState() => _LoginScreen();
}

class _LoginScreen extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/Group 77.png"),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Login to your Account",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color:const Color.fromRGBO(0,0,0,1)
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 55,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow:const [

                  
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    offset: Offset(0, 3),
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer

                  )
                ]
              ),
              child:const TextField(
                decoration: InputDecoration(
                  hintText: "   Username",
                  enabledBorder:InputBorder.none,
                  border: InputBorder.none
                  ),
                ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 55,
              // height: 49,
              // width: 280,

              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow:const [

                  
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    offset: Offset(0, 3),
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer

                  )
                ]
              ),
              child:const TextField(
                decoration: InputDecoration(
                  hintText: "   Password",
                  enabledBorder:InputBorder.none,
                  border: InputBorder.none
                  ),
                ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                 Navigator.push(
                      context,
                     MaterialPageRoute(builder: (context) => const TranjectionSreen()),
                    );
              },
              child: Container(
                height: 55,
                // width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromRGBO(14, 161, 125, 1),
                  
            
                ),
                child: Center(child: Text("Sign In",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(255, 255, 255, 1)
                ),
                )),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ADon’t have an account? ",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color:const Color.fromRGBO(0, 0, 0, 0.6)
                ),
                ),
                 GestureDetector(
                  onTap: () {
                     Navigator.push(
                              context,
                               MaterialPageRoute(builder: (context) => const RegisterScreen()),
                               );
                  },
                   child: Text("Sign Up",
                                 style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color:const Color.fromRGBO(14, 161, 125, 1)
                                 ),
                                 ),
                 )
              ],
            ),
            const SizedBox(
              height: 30,
            )
            
          ],
        ),
      ),
    );
  }
}
