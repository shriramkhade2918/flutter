import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State createState() => MainAppState();
}

class MainAppState extends State {
  List imageData = [
    {"id": 1, "path": "assets/images/download (1).jpeg"},
    {"id": 2, "path": "assets/images/download (2).jpeg"},
    {"id": 3, "path": "assets/images/download (3).jpeg"},
    {"id": 4, "path": "assets/images/download.jpeg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("coursoal Slider"),
      ),
      body: Stack(
        children: [
          coursalSlider(),
          Positioned(bottom: 10, left: 0, right: 0, child: slidingContainer()),
        ],
      ),
    );
  }

  int currentIndex = 0;
  CarouselSliderController coursalControler = CarouselSliderController();
  Widget coursalSlider() {
    return CarouselSlider(
      items: imageData
          .map((item) => Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  item["path"],
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ))
          .toList(),
      carouselController: coursalControler,
      options: CarouselOptions(
        scrollDirection: Axis.vertical,
        autoPlay: true,
        initialPage: 0,
        reverse: true,
        autoPlayCurve: Curves.fastLinearToSlowEaseIn,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        aspectRatio: 2,
        viewportFraction: 1,
        onPageChanged: (index, reason) {
          currentIndex = index;
          setState(() {});
        },
      ),
    );
  }

  Widget slidingContainer() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imageData
            .asMap()
            .entries
            .map((entry) => Container(
                  margin: EdgeInsets.all(5),
                  height: 7,
                  width: currentIndex == entry.key ? 17 : 7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: currentIndex == entry.key
                          ? Colors.red
                          : Colors.amberAccent),
                ))
            .toList());
  }
}
