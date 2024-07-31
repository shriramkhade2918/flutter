import 'package:expense_manager/categories.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'categories.dart';

class TranjectionSreen extends StatefulWidget {
  const TranjectionSreen({super.key});

  @override
  State createState() => _TranjectionSreen();
}

class _TranjectionSreen extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 0.0,
        // leading: const Icon(
        //   Icons.menu,
        //   color: Color.fromRGBO(33, 33, 33, 1),
        // ),
        title: Text(
          "June 2022",
          style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(33, 33, 33, 1)),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Color.fromRGBO(33, 33, 33, 1),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 65,
                  width: 400,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 41,
                            width: 41,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(0, 174, 91, 0.7)),
                            child: const Icon(
                              Icons.medication,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 280,
                                child: Row(
                                  children: [
                                    Text(
                                      "Medicons",
                                      style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Spacer(),
                                    // const SizedBox(
                                    //   width: 200,
                                    // ),
                                    const Icon(
                                      Icons.remove_circle,
                                      color: Color.fromRGBO(246, 113, 49, 1),
                                    ),
                                    Text(
                                      "500",
                                      style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Lorem Ipsum is simply dummy text of the ",
                                style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 0.6)),
                              )
                            ],
                          ),
                          // const SizedBox(
                          //   width: 10,
                          // )
                        ],
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          Text(
                            "3 June | 11:50 AM",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: .5,
                                color: Color.fromRGBO(206, 206, 206, 1))),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        onPressed: () {
          showmodelbottumsheet();
          setState(() {});
        },
        label: Row(
          children: [
            Container(
              height: 32,
              width: 32,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(14, 161, 125, 1)),
              child: const Icon(
                Icons.add,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Add Tranjection",
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(37, 37, 37, 1)),
            ),
          ],
        ),
      ),
      drawer: myDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  List<Map> drawerdata = [
    {
      "name": "Tranjection",
      "image": "images/Subtract.png",
    },
    {"name": "Graphs", "image": "images/icon _pie chart_.png"},
    {"name": "Category ", "image": "images/Subtract (1).png"},
    {"name": "Trash", "image": "images/Vector (2)1.png"},
    {"name": "About us", "image": "images/Vector (3).png"},
  ];
  int selectIndex = 0;
  Color returncolure(int ind) {
    if (selectIndex == ind) {
      return const Color.fromRGBO(14, 161, 125, 0.15);
    } else {
      return Colors.white;
    }
  }

  Color returnfontColor(int ind) {
    if (selectIndex == ind) {
      return const Color.fromRGBO(14, 161, 125, 1);
    } else {
      return const Color.fromRGBO(33, 33, 33, 1);
    }
  }

  List object = [
    const TranjectionSreen(),
    const Categories(),
  ];
  Drawer myDrawer() {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Expense Manager",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(0, 0, 0, 1)),
                ),
                Text(
                  "Saves all your Transactions",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, .5)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 200,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: drawerdata.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: () {
                    selectIndex = index;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => object[index]),
                    );
                    setState(() {});
                  },
                  child: Container(
                    width: 200,
                    height: 55,
                    decoration: BoxDecoration(
                        color: returncolure(index),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset("${drawerdata[index]["image"]}"),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          drawerdata[index]["name"],
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: returnfontColor(index)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void showmodelbottumsheet() {
    showModalBottomSheet(
      shape: const OutlineInputBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      // shape:CircleBorder(
      //   eccentricity: 10
      // ),
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Date",
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  decoration: InputDecoration(
                      hintText: "  Enter Date", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Amount",
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  decoration: InputDecoration(
                      hintText: "  Enter Amount", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Category",
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  decoration: InputDecoration(
                      hintText: "  Enter Category",
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Description",
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  decoration: InputDecoration(
                      hintText: "  Enter Description",
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        setState(() {});
                      },
                      child: Container(
                        // alignment:Alignment.center,
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(14, 161, 125, 1)),
                        child: const Center(
                          child: Text(
                            "Add",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
