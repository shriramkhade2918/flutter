import 'package:cloth_shop/checkoutScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});
  @override
  State createState() => CartScreenState();
}

List<Map> cartDeta = [
  {
    "name": "Total Items (3)",
    "price": "\$116.00",
  },
  {
    "name": "Standard Delivery",
    "price": "\$12.00",
  },
  {
    "name": "Total Payment",
    "price": "\$126.00",
  }
];
List<Map> cartDeta1 = [
  {
    "image": "images/cart/Rectangle 980.png",
    "price": "\$257.85",
    "name": "Premium Tagerine Shirt"
  },
  {
    "image": "images/cart/Rectangle 980 (1).png",
    "price": "\$257.85",
    "name": "Premium Tagerine Shirt"
  }
];

class CartScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 35,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  "Cart",
                  style: GoogleFonts.imprima(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(13, 13, 14, 1)),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "My Orders",
              style: GoogleFonts.imprima(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(13, 13, 14, 1)),
            ),
            SizedBox(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: cartDeta1.length,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Slidable(
                          endActionPane: ActionPane(
                              motion: const StretchMotion(),
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      // height: 20,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(255, 122, 0, 1),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            bottomLeft: Radius.circular(20)),
                                      ),
                                      child: const Row(
                                        children: [
                                          Icon(
                                            Icons.favorite_border_outlined,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(Icons.delete_outline_outlined)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(cartDeta1[index]["image"]),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 150,
                                      child: Text(
                                        "${cartDeta1[index]["name"]}",
                                        style: GoogleFonts.imprima(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromRGBO(
                                                13, 13, 14, 1)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 50,
                                      child: Text(
                                        "Yellow Size 8",
                                        style: GoogleFonts.imprima(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromRGBO(
                                                121, 119, 128, 1)),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "${cartDeta1[index]["price"]}",
                                          style: GoogleFonts.imprima(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: const Color.fromRGBO(
                                                  13, 13, 14, 1)),
                                        ),
                                        const Spacer(),
                                        Text(
                                          "1x",
                                          style: GoogleFonts.imprima(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: const Color.fromRGBO(
                                                  13, 13, 14, 1)),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(227, 227, 227, 1),
                ),
              ),
            ),
            SizedBox(
              // height: 40,
              child: ListView.builder(
                  itemCount: cartDeta.length,
                  shrinkWrap: true,
                  // scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "${cartDeta[index]["name"]}",
                              style: GoogleFonts.imprima(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color.fromRGBO(121, 119, 128, 1)),
                            ),
                            const Spacer(),
                            Text(
                              "${cartDeta[index]["price"]}",
                              style: GoogleFonts.imprima(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(13, 13, 14, 1)),
                            ),
                          ],
                        ),
                      )),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CheckOut()));
                  },
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
                      "Checkout Now",
                      style: GoogleFonts.imprima(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
