import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DemoSlide(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DemoSlide extends StatefulWidget {
  const DemoSlide({super.key});

  @override
  State createState() => DemoSlideState();
}

bool flag = false;

class DemoSlideState extends State {
  void flagchange() {
    flag = !flag;
    setState(() {});
  }

  Scaffold returnScaffold() {
    if (flag == true) {
      return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Color.fromRGBO(197, 4, 98, 1),
              Color.fromRGBO(80, 3, 112, 1)
            ]),
            // gradient:LinearGradient(colors: [Color.fromRGBO(r, g, b, opacity)])
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: GestureDetector(
                  onTap: () {
                    flagchange();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
              const Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: SizedBox(
                      height: 72,
                      width: 258.98,
                      child: Text(
                        "Ux Designer from Screach",
                        style: TextStyle(
                            fontSize: 32.61,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      ))),
              const Padding(
                padding: EdgeInsets.only(top: 15, left: 30),
                child: SizedBox(
                  height: 48,
                  width: 278,
                  child: Text(
                    "Basic guideline & tips & tricks for how to become a UX designer easily.",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color.fromRGBO(228, 205, 225, 1)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                child: Row(
                  children: [
                    Container(
                      height: 34,
                      width: 34,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(34)),
                          color: const Color.fromRGBO(0, 82, 178, 1),
                          border: Border.all(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              width: 1)
                          // shape: BoxShape.circle
                          ),
                      child: Image.asset(
                        "image/Group.png",
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Auther: ",
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    const Text(
                      "Jenny",
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    const Text(
                      "4.8",
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    const Icon(
                      Icons.star,
                      color: Color.fromRGBO(255, 146, 0, 1),
                    ),
                    const Text(
                      "(20 review)",
                      style: TextStyle(
                          color: Color.fromRGBO(190, 154, 197, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 410,
                  margin: const EdgeInsets.only(top: 30),
                  padding: EdgeInsets.only(top: 38),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(38),
                          topRight: Radius.circular(38)),
                      color: Color.fromRGBO(255, 255, 255, 1)),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 350,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.15),
                                  blurRadius: 40,
                                  offset: Offset(0, 8))
                            ],
                            color: Color.fromRGBO(255, 255, 255, 1),
                            // color: Colors.amber,

                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(children: [
                            Container(
                              height: 70,
                              width: 56,
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(230, 239, 239, 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              child: Image.asset("image/youtube.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Introduction",
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Lorem Ipsum is simply dummy text ...",
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            )
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        //),
      );
    } else {
      return Scaffold(
        backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 47, left: 20, right: 10),
              child: Row(
                children: const [
                  Icon(Icons.menu),
                  Spacer(),
                  Icon(Icons.notifications_none_outlined)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: const [
                  //SizedBox(width: 20,),
                  Text(
                    "Welcome to New",
                    style: TextStyle(
                      fontSize: 26.98,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                children: const [
                  //SizedBox(width: 20,),
                  Text(
                    "Educorse",
                    style: TextStyle(fontSize: 37, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    hintText: "Enter your Keyword",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.5),
                    ),
                    fillColor: const Color.fromRGBO(255, 255, 255, 1),
                    suffixIcon: const Icon(Icons.search)),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                width: 407,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(38),
                        topLeft: Radius.circular(38))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Course for you",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                flagchange();
                              },
                              child: Container(
                                  height: 250,
                                  width: 200,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(14)),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        colors: [
                                          Color.fromRGBO(197, 4, 98, 1),
                                          Color.fromRGBO(80, 3, 112, 1)
                                        ]),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      children: const [
                                        Text(
                                          "Ux Designer from Screach",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                        ),
                                        Image(
                                            image:
                                                AssetImage("image/image1.png"))
                                      ],
                                    ),
                                  )),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                                height: 250,
                                width: 200,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14)),
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      colors: [
                                        Color.fromRGBO(0, 77, 228, 1),
                                        Color.fromRGBO(1, 47, 135, 1)
                                      ]),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    children: const [
                                      Text(
                                        "Design Thinking The Beginner",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1)),
                                      ),
                                      Image(
                                          image:
                                              AssetImage("image/Objects.png"))
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        "Course By Category",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(25, 0, 56, 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: const Image(
                                      image: AssetImage("image/Vector.png")),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("UI/UX")
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(25, 0, 56, 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: const Image(
                                      image:
                                          AssetImage("image/Traced Image.png")),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("VISUAL")
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(25, 0, 56, 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: const Image(
                                      image: AssetImage(
                                          "image/Traced Image (1).png")),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("ILLUSTRATION")
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(25, 0, 56, 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: const Image(
                                      image: AssetImage(
                                          "image/Traced Image (2).png")),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("PHOTO")
                              ],
                            )
                          ],
                        ),
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

  @override
  Widget build(BuildContext context) {
    return returnScaffold();
  }
}

// class _DemoSlideState extends State {
//   @override
//   Widget build(BuildContext context) {
    
//   }
// }
