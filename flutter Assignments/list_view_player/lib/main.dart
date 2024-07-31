import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State createState() => _listViewDemoState();
}

class _listViewDemoState extends State {
  List<Map> imageList = [
    {
      "Type": "text Cricket",
      "playerImage": [
        "https://media.licdn.com/dms/image/D4D12AQEStdrOVUJF_w/article-cover_image-shrink_720_1280/0/1685169641102?e=2147483647&v=beta&t=BvNb4tHU1v_6ycn9VKPRYdzA7-QQ-RqTj0qp55W5U5A",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXGDO3wBdypdWP7xZ3UNYL41e20yDJFD0S0U0NfKKnoiRl1Huq7aEjpXxOgvdHBvVwCHA&usqp=CAU",
        "https://crictoday.com/wp-content/uploads/2023/03/i.jpg"
      ],
    },
    {
      "Type": "oneDay",
      "playerImage": [
        "https://media.licdn.com/dms/image/D4D12AQEStdrOVUJF_w/article-cover_image-shrink_720_1280/0/1685169641102?e=2147483647&v=beta&t=BvNb4tHU1v_6ycn9VKPRYdzA7-QQ-RqTj0qp55W5U5A",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXGDO3wBdypdWP7xZ3UNYL41e20yDJFD0S0U0NfKKnoiRl1Huq7aEjpXxOgvdHBvVwCHA&usqp=CAU",
        "https://crictoday.com/wp-content/uploads/2023/03/i.jpg"
      ],
    },
    {
      "Type": "T20",
      "playerImage": [
        "https://media.licdn.com/dms/image/D4D12AQEStdrOVUJF_w/article-cover_image-shrink_720_1280/0/1685169641102?e=2147483647&v=beta&t=BvNb4tHU1v_6ycn9VKPRYdzA7-QQ-RqTj0qp55W5U5A",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXGDO3wBdypdWP7xZ3UNYL41e20yDJFD0S0U0NfKKnoiRl1Huq7aEjpXxOgvdHBvVwCHA&usqp=CAU",
        "https://crictoday.com/wp-content/uploads/2023/03/i.jpg"
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "ListView",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView.separated(
          shrinkWrap: true,
            itemCount: imageList.length,
            separatorBuilder: (context, index) {
              return Container(
                height: 5,
                width: 250,
                color: Colors.black,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return Column(children: [
                Text(imageList[index]["Type"]),
                ListView.builder(
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: imageList[index]["playerImage"].length,
                    itemBuilder: ((context, val) {
                      return Container(
                        height: 200,
                        width: 200,
                        margin: const EdgeInsets.all(10),
                        child:
                            Image.network(imageList[index]["playerImage"][val]),
                      );
                    })),
              ]);
            }),
            );
  }
}
