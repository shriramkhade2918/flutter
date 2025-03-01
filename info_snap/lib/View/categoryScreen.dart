import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:info_snap/Controller/categoryController.dart';

class Categoryscreen extends StatefulWidget {
  const Categoryscreen({super.key});

  @override
  State<Categoryscreen> createState() => _CategoryscreenState();
}

class _CategoryscreenState extends State<Categoryscreen> {
  CategoryController categoryController = Get.put(CategoryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Category',
            style:
                GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        body: Obx(() {
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                GridView.builder(
                  padding: EdgeInsets.all(10),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2),
                  itemCount: categoryController.categories.length,
                  itemBuilder: (context, index) => Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 232, 227, 212)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          // padding: EdgeInsets.all(20),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 210, 210, 210),
                              shape: BoxShape.circle),
                          child: Icon(
                            categoryController.categories[index].icon,
                            color: Colors.blue,
                            size: 50,
                          ),
                        ),
                        Text(
                          categoryController.categories[index].name,
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        }));
  }
}
