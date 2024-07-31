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
        
            decoration:const  BoxDecoration(
              image:DecorationImage(
                alignment: Alignment.topLeft,
                image: AssetImage("images/Group 5314.png",
              ))
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Container(
              
              height: 32,
              width: 415,
              color: const Color.fromRGBO(123, 123, 123, 1),
            ),
            const SizedBox(
              height: 120,
            ),
            SizedBox(
              child:Text("Log in",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                // height: 45,
                color:const Color.fromRGBO(0, 0, 0, 1)
              ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30,left: 30),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon:const  Icon(Icons.call_outlined),
                  // prefix:Image(image: AssetImage("images/Vector (2).png")),
                  hintText: "Mobile Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  )
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
          height: 60,
          width: 360,
          decoration:  const BoxDecoration(
            gradient:LinearGradient(colors:[Color.fromRGBO(62, 102, 24, 1),Color.fromRGBO(124, 180, 70, 1)]),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.15),
                offset: Offset(0, 20),
                blurRadius: 40
              )
            ]
          ),
          child: Center(
            child: Text("Log in",
            style: GoogleFonts.rubik(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color:const Color.fromRGBO(255, 255, 255, 1)
            ),
            ),
          ),
        ),
        const Spacer(),
        Image.asset("images/plant2.png",
        height: 420,
        width: 420,
        ),
        Container(
          height: 50,
          width: 415,
          color:const Color.fromRGBO(123, 123, 123, 1),
        )
            
          ]
        ),
      )
    );
  }
}

