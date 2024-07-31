import'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State createState() => _ProjectState();
}

class _ProjectState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromARGB(246, 113, 50, 239),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.arrow_back,
                  // color: Colors.white,
                  size: 30,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Iguazú Falls",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      // color: Colors.white),
                  )
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Icon(Icons.menu,color: Colors.white,),
                ),
               
              ],
            ),
          ),
           Expanded(
             child: Container(
                    width: 410,

              margin:const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 233, 232, 227),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                  )
              ),
                    
                    child: 
                    Column(children: [
                      Container(
                        height: 300,
                        width: 400,
                        decoration: BoxDecoration(
                          image:const DecorationImage(image: NetworkImage("https://www.travelandleisure.com/thmb/Y1a112DEKR33wvlMLVyZy4bCNsk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/TAL-lead-image-PLACESSAM0923-64289f1480114f96a5890ddfc9485136.jpg"),
                          fit: BoxFit.fill
                          ),
                          borderRadius: BorderRadius.circular(30)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                         // width: 380,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:const [
                              Text("Information:",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500
                              ),
                               
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text('''Located on the border of Argentina and Brazil, Iguazú Falls is comprised of about 275 individual waterfalls, making it the largest waterfall system in the world. Most of the waterfalls are on the Argentina side, but the tallest is on the Brazil side. It’s a stunning sight to behold and an absolute must for anyone traveling through South America.
                      ''',
                      style: TextStyle(
                        fontWeight: FontWeight.w500
                      ),
                      ),
                            ],
                          ),
                        ),
                      )
           
                    ]),
                  ),
           )
        ],
        ),
        );
  }
}
