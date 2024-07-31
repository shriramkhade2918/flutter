import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_screen.dart';

class ExpenseManager extends StatefulWidget {
  const ExpenseManager({super.key});

  @override
  State createState() => _ExpenceManager();
}

class _ExpenceManager extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 200,
              ),
              GestureDetector(
                 onTap: () {
                  
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
        
      },
                child: Container(
                  height: 144,
                  width: 144,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(234, 238, 235, 1)),
                  child: Image.asset("images/Group 77.png"),
                ),
              ),
              const SizedBox(
                height: 250,
              ),
              Text(
                "Expence Manager",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(0, 0, 0, 1)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
