// 3. Create a ListView in which there are 10 children refer to the below image
// for the child of ListView.
// The given image must be the child of the Listview. In the


import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            ListView.builder(
              physics:const PageScrollPhysics() ,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder:(context, index) => 
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 80,
                          width: 80,
                          child: Image.network(
                              "https://image.winudf.com/v2/image1/Y29tLmRldmVsb3Blci5jb3JlMndlYl9pY29uXzE2Mjc5MDg0MDZfMDc3/icon.png?w=184&fakeurl=1"),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin:const EdgeInsets.all(5),
                              padding:const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all()),
                              child:const Text("Core2Web")),
                              Container(
                                margin:const EdgeInsets.all(5),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all()),
                              child:const Text("Core2Web")),
                              Container(
                                margin:const EdgeInsets.all(5),
                              padding:const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all()),
                              child:const Text("Core2Web")),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          shape: BoxShape.circle
                        ),
                        child:const  Icon(Icons.verified_outlined),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

