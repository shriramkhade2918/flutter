import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});
  @override
  State createState() => CheckOutState();
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

class CheckOutState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 35),
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
                  "Checkout",
                  style: GoogleFonts.imprima(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(13, 13, 14, 1)),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Delivery Address",
              style: GoogleFonts.imprima(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(121, 119, 128, 1)),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset("images/checkout/Rectangle 121.png"),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: 180,
                  child: Text(
                    "25/3 Housing Estate, Sylhet",
                    style: GoogleFonts.imprima(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(13, 13, 14, 1)),
                  ),
                ),
                const Spacer(),
                Text(
                  "change",
                  style: GoogleFonts.imprima(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(121, 119, 128, 1)),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const Icon(Icons.watch_later_outlined),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Delivered in next 7 days",
                  style: GoogleFonts.imprima(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(121, 119, 128, 1)),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Payment Method",
              style: GoogleFonts.imprima(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(121, 119, 128, 1)),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/checkout/Group 17305.png"),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Add Voucher",
                  style: GoogleFonts.imprima(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(121, 119, 128, 1)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Note : ",
                      style: GoogleFonts.imprima(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(255, 0, 0, 1)),
                    ),
                    Text(
                      "Use your order id at the payment. Your Id ",
                      style: GoogleFonts.imprima(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(121, 119, 128, 1)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "#154619 i",
                      style: GoogleFonts.imprima(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(22, 22, 38, 1)),
                    ),
                    Text(
                      "f you forget to put your order id we ",
                      style: GoogleFonts.imprima(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(121, 119, 128, 1)),
                    ),
                  ],
                ),
                Text(
                  "can’t confirm the payment. ",
                  style: GoogleFonts.imprima(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(121, 119, 128, 1)),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              // height: 40,
              child: ListView.builder(
                  itemCount: cartDeta.length,
                  shrinkWrap: true,
                  // scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(
                            // left: 1,
                            // right: 15,
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
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                      "Pay Now",
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
