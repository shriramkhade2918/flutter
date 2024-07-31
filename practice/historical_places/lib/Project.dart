import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State createState() => _ProjectState();
}

class _ProjectState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(246, 113, 50, 239),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Hello, ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                const Text(
                  "Shriram",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Icon(Icons.menu),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // Container(
          //   height: 2,
          //   width: 410,
          //   color: Colors.black,
          // ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 225, 129, 122),
                    Colors.purple
                  ], begin: Alignment.topCenter),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Color.fromARGB(255, 245, 244, 244)),
              child: SingleChildScrollView(
                physics: const PageScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage("images/fort1.avif"),
                                      fit: BoxFit.fill),
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage("images/temple1.jpg"),
                                      fit: BoxFit.fill),
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("images/waterfall2.jpeg"),
                                      fit: BoxFit.fill),
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage("images/fort2.avif"),
                                      fit: BoxFit.fill),
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(20)),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Forts",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                       // showBottumSheet(index);
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20, top: 10),
                        height: 200,
                        width: 360,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("images/fort2.avif"),
                                fit: BoxFit.cover),
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        "Temple",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 10),
                      height: 200,
                      width: 360,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("images/ram temple.jpg"),
                              fit: BoxFit.cover),
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        "Water Falls",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 10, bottom: 20),
                      height: 200,
                      width: 360,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("images/waterfall1.jpeg"),
                              fit: BoxFit.cover),
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20)),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  
}
