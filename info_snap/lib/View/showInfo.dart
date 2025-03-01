import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:info_snap/Controller/getXController.dart';
import 'package:info_snap/View/webView.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class ShowNewsDetailsInfo extends StatefulWidget {
  // Map newdata;
  int index;
  ShowNewsDetailsInfo({super.key, required this.index});

  @override
  State<ShowNewsDetailsInfo> createState() => _ShowNewsDetailsInfoState();
}
Future<void> launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await canLaunchUrl(uri)) {
    throw 'Could not launch $url';
  } else {
    await launchUrl(uri);
  }
}

class _ShowNewsDetailsInfoState extends State<ShowNewsDetailsInfo> {
  NewsController obj = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        excludeHeaderSemantics: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20,bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  obj.newsData[widget.index].title!,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image:
                          NetworkImage(obj.newsData[widget.index].urlToImage!),
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('${obj.newsData[widget.index].publishedAt}'
                      .substring(0, 10)),
                  const Spacer(),
                  Icon(Icons.more_vert_outlined)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  obj.newsData[widget.index].description!,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Text("For More Info : "),
              GestureDetector(
                onTap: () {
                  // launchURL(widget.newdata['url']);
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => WebViewData(
                  //               url: widget.newdata['url'],
                  //             )));

                  // setState(() {});
                  Get.to(
                      () => WebViewData(url: obj.newsData[widget.index].url!));
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    obj.newsData[widget.index].url!,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
