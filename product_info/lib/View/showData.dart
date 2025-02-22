import 'package:flutter/material.dart';
import 'package:product_info/Controller/controller.dart';

class ShowDataInfoScreen extends StatefulWidget {
  const ShowDataInfoScreen({super.key});

  @override
  State<ShowDataInfoScreen> createState() => _ShowDataInfoScreenState();
}

List productData = [];
List productCategiryData = [];
int selectedindex = -1;

class _ShowDataInfoScreenState extends State<ShowDataInfoScreen> {
  num count = 1.0;
  @override
  void initState() {
    super.initState();
    getData(64).then((value) {
      setState(() {});
    });
  }

  Color colorTogle(int index) {
    if (selectedindex == index) {
      return const Color.fromARGB(255, 226, 207, 164);
    }
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 0, left: 0, top: 20),
        child: Column(
          children: [
            SizedBox(
              // width: ,
              height: 150,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: productData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        getProductcategiryData(productData[index]['categoryId'])
                            .then((value) {
                          setState(() {});
                        });
                        selectedindex = index;
                        setState(() {});
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.network(productData[index]['image']),
                            ),
                            Text(productData[index]['name']),
                            Container(
                              height: 3,
                              width: 100,
                              color: colorTogle(index),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Expanded(
              child: SizedBox(
                child: GridView.builder(
                  itemCount: productCategiryData.length,
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      height: 500,
                      // width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2,
                                blurStyle: BlurStyle.outer,
                                color: Color.fromRGBO(0, 0, 0, .5),
                                offset: Offset(0, 6))
                          ]),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(2.2),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.green)),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 70,
                            width: 100,
                            child: Image.network(
                                productCategiryData[index]['imagePath']),
                          ),
                          SizedBox(
                            width: 200,
                            child: Text(
                              productCategiryData[index]['name'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Text(
                                "AED 1.0",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  // count++;
                                  setState(() {});
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 196, 138, 109),
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.add_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
