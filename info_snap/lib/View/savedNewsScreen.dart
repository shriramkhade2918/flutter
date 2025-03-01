import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:info_snap/Controller/getXController.dart';
import 'package:info_snap/View/showInfo.dart';

class Savednewsscreen extends StatefulWidget {
  const Savednewsscreen({super.key});

  @override
  State<Savednewsscreen> createState() => _SavednewsscreenState();
}

class _SavednewsscreenState extends State<Savednewsscreen> {
  NewsController newsController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Save"),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                      onTap: () {
                        newsController.saveNewsList.clear();
                      },
                      child: Text('Clear all Data'),
                    ),
                    // PopupMenuItem(
                    //   onTap: () {
                    //     newsController.saveNewsList.clear();
                    //   },
                    //   child: Text(''),
                    // ),
                  ])
          // GestureDetector(
          //   onTap: () {

          //   },
          //   child: Icon(Icons.more_vert_outlined)),
          // const SizedBox(
          //   width: 10,
          // )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(() {
              return Column(
                children: [
                  SizedBox(
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: newsController.saveNewsList.length,
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
    );
  }

  Widget buildWidget(int index) {
    if (newsController.saveNewsList[index].urlToImage != null &&
        newsController.saveNewsList[index].title != null) {
      return Column(
        children: [
          GestureDetector(
            onTap: () {
              newsController
                  .addWachedNewsData(newsController.saveNewsList[index]);
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
                              newsController.saveNewsList[index].urlToImage!),
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
                      newsController.saveNewsList[index].title!,
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
              Text('${newsController.saveNewsList[index].publishedAt}'
                  .substring(0, 10)),
              const Spacer(),
              const SizedBox(
                width: 15,
              ),
            ],
          )
        ],
      );
    } else {
      return SizedBox();
    }
  }
}
