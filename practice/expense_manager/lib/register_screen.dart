import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State createState() => _RegisterScreen();
}

class _RegisterScreen extends State {
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
              "Create your Account",
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
                  hintText: "   Name",
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
                  hintText: "   Conform Password",
                  enabledBorder:InputBorder.none,
                  border: InputBorder.none
                  ),
                ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onDoubleTap: () {
                 Navigator.push(
                      context,
                     MaterialPageRoute(builder: (context) => const LoginScreen()),
                    );
              },
              child: Container(
                height: 55,
                // width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromRGBO(14, 161, 125, 1),
                  
            
                ),
                child: Center(child: Text("Sign Up",
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
                Text("Already have an account? ",
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
                     MaterialPageRoute(builder: (context) => const LoginScreen()),
                    );
                  },
                   child: Text("Sign In",
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
