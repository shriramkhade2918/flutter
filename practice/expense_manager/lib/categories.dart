import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State createState() => _Categories();
}

List<Map> categoriesdata = [
  {
    "color": const Color.fromRGBO(214, 3, 3, 0.7),
    "image": "images/Vector (2)2.png",
    "name": "Food"
  },
  {
    "color": const Color.fromRGBO(0, 148, 255, 0.7),
    "image": "images/Vector (3)2.png",
    "name": "Fuil"
  },
  {
    "color": const Color.fromRGBO(0, 174, 91, 0.7),
    "image": "images/Vector (4).png",
    "name": "Medicine"
  },
  {
    "color": const Color.fromRGBO(241, 38, 197, 0.7),
    "image": "images/Vector (5).png",
    "name": "Shopping"
  }
];

class _Categories extends State {
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
          "Categories",
          style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(33, 33, 33, 1)),
        ),
      ),
      body: GridView.builder(
          // scrollDirection: Axis.horizontal,
          // reverse: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          padding: const EdgeInsets.all(20),
          itemCount: categoriesdata.length,
          itemBuilder: (context, index) => Container(
                // height: 150,
                // width: 150,
                decoration: BoxDecoration(
                    // color: Colors.amber,
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          offset: Offset(1, 2),
                          blurRadius: 8,
                          blurStyle: BlurStyle.outer)
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: categoriesdata[index]["color"],
                        ),
                        child: Image.asset(categoriesdata[index]["image"])),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      categoriesdata[index]["name"],
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(33, 33, 33, 1)),
                    )
                  ],
                ),
              )),
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
              "Add Categories",
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
  int selectIndex = -1;
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(140, 128, 128, 0.2)),
                          child: Image.asset("images/Group 45.png"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Add",
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
                Text(
                  "Image URL",
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  decoration: InputDecoration(
                      hintText: "  Enter ERL", border: OutlineInputBorder()),
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
                      hintText: "  Enter Category Name",
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
