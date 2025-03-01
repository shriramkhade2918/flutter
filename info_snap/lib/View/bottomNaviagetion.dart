import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:info_snap/Controller/getXController.dart';
import 'package:info_snap/View/HomeScreen.dart';
import 'package:info_snap/View/categoryScreen.dart';
import 'package:info_snap/View/profileScreen.dart';
import 'package:info_snap/View/savedNewsScreen.dart';

class BottomShitInfo extends StatefulWidget {
  const BottomShitInfo({super.key});

  @override
  State<BottomShitInfo> createState() => _BottomShitInfoState();
}

class _BottomShitInfoState extends State<BottomShitInfo> {
  NewsController newcontroller = Get.put(NewsController());
  List screen = [
    HomeScreen(),
    Savednewsscreen(),
    Categoryscreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() {
          return screen[newcontroller.selectedindex.value];
        }),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            // landscapeLayout:,
            // type: Bottom,
            currentIndex: newcontroller.selectedindex.value,
            onTap: (value) {
              newcontroller.changeSelectedIndex(value);
              // screen[selectedindex];
            },
            unselectedItemColor: Colors.black45,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            selectedItemColor: Colors.amber,
            selectedLabelStyle: TextStyle(color: Colors.black),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark_add_outlined), label: 'Save'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: 'Category'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
          ),
        ));
  }
}
