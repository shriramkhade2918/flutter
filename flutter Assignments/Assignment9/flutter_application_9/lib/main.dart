// ignore: file_names
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment(),
    );
  }
}

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 16, 13, 13),
        appBar: AppBar(
          title: const Text("NETFLIX"),
          //titleTextStyle: TextStyle,
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.network(
                      "https://s1.dmcdn.net/v/SBOGE1UeG96Z261m0/x1080",
                      height: 500,
                      width: 900,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "MOVIES",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                          height: 500,
                          width: 200,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc",
                          height: 500,
                          width: 200,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.network(
                          "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                          height: 500,
                          width: 200,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNzfs2Hl3VyX_H9HyZOFjYU6dmWIZdIpFYiGDW2M48g7IhQRvpu1I5HQyVECeQADN1a6A&usqp=CAU",
                          height: 500,
                          width: 200,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.network(
                          "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                          height: 500,
                          width: 200,
                        ),
                      ])),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "VEB SERIES",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          "https://rukminim2.flixcart.com/image/850/1000/l0h1g280/poster/w/g/d/small-mirzapur-web-series-poster-multicolor-photopaper-print-12-original-imagc95dpwwmqcbg.jpeg?q=90&crop=false",
                          height: 200,
                          width: 100,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.network(
                          "https://mir-s3-cdn-cf.behance.net/project_modules/hd/2c7d21112473239.601502d49ff6e.jpg",
                          height: 200,
                          width: 100,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.network(
                          "https://m.media-amazon.com/images/I/61KRE1F2JgL._AC_UF1000,1000_QL80_.jpg",
                          height: 200,
                          width: 100,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.network(
                          "https://images.news18.com/ibnkhabar/uploads/2023/10/Scam-1992-2023-10-0f1549850b2092601b53fbf7021f474b.jpg?im=Resize,width=450,aspect=fit,type=normal",
                          height: 200,
                          width: 100,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.network(
                          "https://m.media-amazon.com/images/I/61KRE1F2JgL._AC_UF1000,1000_QL80_.jpg",
                          height: 200,
                          width: 100,
                        ),
                      ])),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "MOST POPULAR",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUcZ4y5gv8NFHdwKOQoqqw-zLXFKsgB82_qc1b0kUlk66pJ0NUBLJO1mDjzpcs8d0tI_c&usqp=CAU",
                          height: 200,
                          width: 100,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.network(
                          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                          height: 200,
                          width: 100,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.network(
                          "https://m.media-amazon.com/images/I/910CKd2GJiL.png",
                          height: 200,
                          width: 100,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.network(
                          "https://mir-s3-cdn-cf.behance.net/project_modules/hd/2c7d21112473239.601502d49ff6e.jpg",
                          height: 200,
                          width: 100,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.network(
                          "https://m.media-amazon.com/images/M/MV5BMDBmYTZjNjUtN2M1MS00MTQ2LTk2ODgtNzc2M2QyZGE5NTVjXkEyXkFqcGdeQXVyNzAwMjU2MTY@._V1_QL75_UX140_CR0,0,140,207_.jpg",
                          height: 200,
                          width: 100,
                        ),
                      ])),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}
