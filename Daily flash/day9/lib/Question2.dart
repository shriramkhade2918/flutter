// 2. Create a ListView in which there are 8 children and each child must be a
// Column widget. In each Column you must have an Image in the Start (The
// image must be of width 80 and height 80) Besides the image there must be
// a Container with a text in the Center and a border to the Container.
// (Refer to the below image)

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
              physics:PageScrollPhysics() ,
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
                      Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()),
                          child: Text("Core2Web"))
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
