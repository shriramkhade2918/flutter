// 4..Display a ListView in the ListView display 10 Children such that each
// child must be a Container having a circular image in the beginning and
// next to the image display the Text. Give a border to the container.
// Refer to the below image for creating the child:

import 'package:flutter/material.dart';

List<Map> data = [
  {
    "image": "https://assets-news.housing.com/news/wp-content/uploads/2022/07/20202710/10-famous-historical-places-in-India.jpg", 
  "name": "Lal Fort"
  },
   {
    "image": "https://www.oyorooms.com/blog/wp-content/uploads/2017/10/Feature-Image-min-14.jpg", 
  "name": "name"
  },
   {
    "image": "https://images1.wionews.com/images/wion/900x1600/2023/9/28/1695896031325_pexelssanjaykareer13385089.jpg", 
  "name": "name"
  },
   {
    "image": "https://www.thomascook.in/blog/wp-content/uploads/2023/09/Delhi.jpg", 
  "name": "name"
  },
   {
    "image": "https://cdn.testbook.com/1691043812323-Gateway%20Of%20India%2C%20Mumbai.webp/1691043815.webp", 
  "name": "name"
  },
];

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10,bottom: 10),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all()),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(data[index]["image"])),
                              border: Border.all(),
                              shape: BoxShape.circle),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(child: Text("${data[index]["name"]}")),
                      ]));
            }),
      ),
    );
  }
}
