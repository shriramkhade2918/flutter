import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State createState() => MusicScreenState();
}

class MusicScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 550,
            width: 480,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("images/musimg.png"))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  child: Text(
                    "Alone in the Abyss",
                    style: GoogleFonts.inter(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(230, 154, 21, 1)),
                  ),
                ),
                SizedBox(
                  child: Text(
                    "Youlakou",
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
                const Row(
                  children: [
                    Spacer(),
                    Icon(
                      size: 25,
                      Icons.ios_share,
                      color: Color.fromRGBO(230, 154, 21, 1),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Text(
                "Dynamic Warmup | ",
                style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(255, 255, 255, 1)),
              ),
              const Spacer(),
              Text(
                "4 min ",
                style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(255, 255, 255, 1)),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: LinearProgressIndicator(
              minHeight: 7,
              borderRadius: BorderRadius.all(Radius.circular(5)),
              value: .3,
              valueColor:
                  AlwaysStoppedAnimation(Color.fromRGBO(230, 154, 21, 1)),
              backgroundColor: Color.fromRGBO(217, 217, 217, 0.19),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
         const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.repeat_one_rounded,
                size: 30,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
               Icon(
                Icons.skip_previous_sharp,
                size: 30,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
               Icon(
                Icons.play_circle,
                size: 55,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
               Icon(
                Icons.skip_next_sharp,
                size: 30,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
               Icon(
                Icons.volume_up_outlined,
                size: 30,
                color: Color.fromRGBO(255, 255, 255, 1),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // showUnselectedLabels: true,
        unselectedItemColor: const Color.fromRGBO(157, 178, 206, 1),
        type:BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedLabelStyle: GoogleFonts.abel(
          fontSize:14,
          fontWeight:FontWeight.w400,
          color:const Color.fromRGBO(157, 178, 206, 1),


        ),
        // showSelectedLabels: true,
        fixedColor: const Color.fromRGBO(248, 162, 69, 1),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
               color: Color.fromRGBO(157, 178, 206, 1),
              
            ),
            label:"Favorate", 
          ),
           BottomNavigationBarItem(
            icon: Icon(
              color: Color.fromRGBO(157, 178, 206, 1),
              Icons.search_outlined,
              
            ),
            label:"Search",
          ),
           BottomNavigationBarItem(
            icon: Icon(
              color: Color.fromRGBO(157, 178, 206, 1),

              Icons.home_outlined,
              
            ),
            label:"Home",
          ),
           BottomNavigationBarItem(
            icon: Icon(
               color: Color.fromRGBO(157, 178, 206, 1),
              Icons.card_giftcard,
              
            ),
            label:"cards",
          ),
           BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
               color: Color.fromRGBO(157, 178, 206, 1),
            
            ),
            label:"Info",
          ),
        ],
      ),
    );
  }
}
