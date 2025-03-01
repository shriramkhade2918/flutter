import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:info_snap/View/showInfo.dart';
import '../Controller/getXController.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NewsController newsController = Get.find();

  @override
  Widget build(BuildContext context) {
    log("build homeScreen");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        // foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
        // primary: false,
        leadingWidth: 300,
        backgroundColor: Colors.white,
        // title: Text("InfoSnap"),
        leading: Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 233, 224, 224),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/landScapeLogo.png'))),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Obx(() {
                return (newsController.isLoading.value)
                    ? Center(
                        child: CircularProgressIndicator(
                          color: Colors.green,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      )
                    : Column(
                        children: [
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Container(
                          //       alignment: Alignment.center,
                          //       height: 50,
                          //       width: 100,
                          //       decoration: BoxDecoration(
                          //         color: Colors.green,
                          //         borderRadius: BorderRadius.only(
                          //           topLeft: Radius.circular(10),
                          //           bottomLeft: Radius.circular(10),
                          //         ),
                          //       ),
                          //       child: Text("LIVE"),
                          //     ),
                          //     Container(
                          //       alignment: Alignment.center,
                          //       height: 50,
                          //       width: 100,
                          //       decoration: BoxDecoration(
                          //           color: Colors.blue,
                          //           borderRadius: BorderRadius.only(
                          //             topRight: Radius.circular(10),
                          //             bottomRight: Radius.circular(10),
                          //           )),
                          //       child: Text("Watch"),
                          //     )
                          //   ],
                          // ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: newsController.newsData.length,
                                itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: buildWidget(index))),
                          ),
                        ],
                      );
              })
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        onPressed: () {},
        child: Text("Explore"),
      ),
    );
  }

  Widget buildWidget(int index) {
    if (newsController.newsData[index].urlToImage != null &&
        newsController.newsData[index].title != null) {
      return Column(
        children: [
          GestureDetector(
            onTap: () {
              newsController.addWachedNewsData(newsController.newsData[index]);
              Get.to(ShowNewsDetailsInfo(index: index));
            },
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                              newsController.newsData[index].urlToImage!),
                          fit: BoxFit.fill)),
                  child: Column(
                    children: [
                      const Spacer(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      newsController.newsData[index].title!,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text('${newsController.newsData[index].publishedAt}'
                  .substring(0, 10)),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  if (newsController.saveNewsList
                      .contains(newsController.newsData[index])) {
                    Get.snackbar(
                      padding: EdgeInsets.only(
                          top: 15,
                          left: MediaQuery.of(context).size.width / 2.9),
                      'Already Saved',
                      '',
                      snackPosition: SnackPosition.BOTTOM,
                      // backgroundColor: Colors.green,
                      colorText: Colors.black,
                    );
                  } else {
                    newsController
                        .addSaveNewsData(newsController.newsData[index]);
                    Get.snackbar(
                      padding: EdgeInsets.only(
                          top: 15,
                          left: MediaQuery.of(context).size.width / 2.9),
                      'Saved Succesfully',
                      '',
                      snackPosition: SnackPosition.BOTTOM,
                      // backgroundColor: Colors.green,
                      colorText: Colors.black,
                    );
                  }

                  // ScaffoldMessenger.of(context).showSnackBar()
                },
                child: Icon(Icons.bookmark_add_outlined),
              ),
              const SizedBox(
                width: 15,
              ),
              Icon(Icons.more_vert_outlined)
            ],
          )
        ],
      );
    } else {
      return SizedBox();
    }
  }
}
