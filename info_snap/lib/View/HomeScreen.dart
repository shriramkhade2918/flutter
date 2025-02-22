import 'package:flutter/material.dart';
import 'package:info_snap/View/showInfo.dart';

import '../Controller/apiIntigration.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List newsData = [];

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    getData().then((value) {
      setState(() {});
    });
    // then((value) {
    //   setState(() {});
    // });
    //  getData().then((value) {
    //   setState(() {});
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InfoSnap"),
      ),
      // drawer: Column(
      //   children: [
      //     Container(
      //       height: 100,
      //       width: 100,
      //       color: Colors.white,
      //     ),
      //   ],
      // ),
      body: (newsData.isEmpty)
          ? Center(
              child: CircularProgressIndicator(
                color: Colors.green,
                strokeAlign: BorderSide.strokeAlignCenter,
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: Text("LIVE"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )),
                        child: Text("Watch"),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: newsData.length,
                        itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: buildWidget(index))),
                  ),
                ],
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
    if (newsData[index]['urlToImage'] != null &&
        newsData[index]['title'] != null) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ShowNewsDetailsInfo(newdata: newsData[index])));
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
                      image: NetworkImage(newsData[index]['urlToImage']),
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
                  newsData[index]['title'],
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              children: [
                Text('${newsData[index]['publishedAt']}'.substring(0, 10)),
                const Spacer(),
                Icon(Icons.more_vert_outlined)
              ],
            )
          ],
        ),
      );
    } else {
      return SizedBox();
    }
  }
}
