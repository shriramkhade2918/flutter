import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:tp_chatify/Controler/Control.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

List<Map> apiData = [];
bool changeData = false;

TextEditingController messageData = TextEditingController();

class _ChatScreenState extends State<ChatScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData('Hello').then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          "TP_Chatify",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("lib/assets/chatbot.webp"),
          fit: BoxFit.fill,
        )),
        child: Stack(
          // alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 1.22,
                  child: ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: apiData.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: (apiData[index]['flag'] == false)
                              ? EdgeInsets.only(
                                  left: 150,
                                  bottom: 10,
                                )
                              : EdgeInsets.only(
                                  right: 100,
                                  bottom: 10,
                                ),
                          child: Container(
                            width: MediaQuery.of(context).devicePixelRatio,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: (apiData[index]['flag'] == false)
                                  ? Colors.blueAccent
                                  : Colors.greenAccent,
                            ),
                            child: Text(
                              apiData[index]['data'],
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.5, right: 10.5, bottom: 10),
              child: Column(
                children: [
                  const Spacer(),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: TextField(
                          controller: messageData,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      GestureDetector(
                        onTap: () {
                          changeData = false;
                          if (messageData.text.isNotEmpty) {
                            String message = messageData.text.trim();
                            Map<String, dynamic> dataFormat = {
                              'flag': changeData,
                              'data': message,
                            };
                            apiData.add(dataFormat);
                            getData(message).then((value) {
                              setState(() {});
                            });
                          }

                          setState(() {});
                          messageData.clear();
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                          ),
                          child: Icon(
                            Icons.send,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
