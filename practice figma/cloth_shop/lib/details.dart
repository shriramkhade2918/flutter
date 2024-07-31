import 'package:cloth_shop/cartScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State createState() => DetailsState();
}

List<Map> data = [
  {
    "name": "S",
    "color": const Color.fromRGBO(13, 13, 14, 1),
    "fontcolor": const Color.fromRGBO(255, 255, 255, 1),
  },
  {
    "name": "L",
    "color": const Color.fromRGBO(255, 255, 255, 1),
    "fontcolor": const Color.fromRGBO(13, 13, 14, 1),
  },
  {
    "name": "M",
    "color": const Color.fromRGBO(255, 255, 255, 1),
    "fontcolor": const Color.fromRGBO(13, 13, 14, 1),
  },
  {
    "name": "XL",
    "color": const Color.fromRGBO(255, 255, 255, 1),
    "fontcolor": const Color.fromRGBO(13, 13, 14, 1),
  },
  {
    "name": "XXL",
    "color": const Color.fromRGBO(255, 255, 255, 1),
    "fontcolor": const Color.fromRGBO(13, 13, 14, 1),
  },
];

class DetailsState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                  ),
                ),
                const Spacer(),
                Text(
                  "Details",
                  style: GoogleFonts.imprima(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(13, 13, 14, 1)),
                ),
                const Spacer(),
                const Icon(
                  Icons.bookmark_outline,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/details/Rectangle 984 (1).png"),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Premium",
                      style: GoogleFonts.imprima(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(13, 13, 14, 1)),
                    ),
                    Text(
                      "Tagerine Shirt",
                      style: GoogleFonts.imprima(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(13, 13, 14, 1)),
                    ),
                  ],
                ),
                Image.asset("images/details/Options (1).png")
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Size",
              style: GoogleFonts.imprima(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(13, 13, 14, 1)),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 40,
              child: ListView.builder(
                itemCount: data.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 5,
                    bottom: 10,
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: data[index]["color"],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "${data[index]["name"]}",
                    style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: data[index]["fontcolor"],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$240.32",
                  style: GoogleFonts.imprima(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(13, 13, 14, 1)),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 65,
                    width: 150,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 122, 0, 1),
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(13, 13, 14, 1))),
                    child: Text(
                      "Add To Cart",
                      style: GoogleFonts.imprima(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
