// 2. Create a Screen in which you will have to display the image of food items
// and below the image display the name of that food item.
// Display 10 such images.The scrolling direction must be horizontal
// (refer to the below image )

import 'package:flutter/material.dart';
List<Map> image=[
  {
    "image":"https://media.istockphoto.com/id/495878092/photo/red-apple.jpg?s=612x612&w=0&k=20&c=M2ndFI1v2erJM18q1Cd1QCM8jqBlRKLc1nLE9BNp-EY=",
    "name":"Apple"
  },
   {

    "image":"https://www.torbayfruitsales.co.uk/wp-content/uploads/2023/05/mango3.jpg",
    "name":"Mango"
  },
   {
    "image":"https://www.shutterstock.com/image-photo/banana-cluster-isolated-600nw-575528746.jpg",
    "name":"Banana"
  },
   {
    "image":"https://seed2plant.in/cdn/shop/products/PhotoRoom_20210703_131057.jpg?v=1625299981",
    "name":"Papaya"
  },
   {
    "image":"https://5.imimg.com/data5/VU/MR/MY-24751011/purple-grapes.jpg",
    "name":"Greps"
  }
];
class Question extends StatelessWidget{
  const Question({super.key});


  @override
  Widget build (BuildContext context){
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.only(top: 50,left: 10,right: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // const SizedBox(
              //   height: 30,
              // ),
              ListView.builder(
                
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: image.length,
                itemBuilder: (context, index) => 
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(image:NetworkImage(image[index]["image"]) )
                        ),
                        // child: Image.network(""),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 200,
                               
                        decoration: BoxDecoration(
                          border: Border.all()
                        ),
                        child:Center(child: Text("${image[index]["name"]}")),
                      )
                    ],
                                 ),
                 ),
              )
            ],
          ),
        ),
      ) ,
    );

  }
}
