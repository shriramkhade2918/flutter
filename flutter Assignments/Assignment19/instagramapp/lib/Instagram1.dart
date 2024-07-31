import 'package:flutter/material.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State createState() => _InstagramState();
}

class _InstagramState extends State {
  List<String> profile = [
    "https://media.licdn.com/dms/image/D4E03AQEhU3oVvbmJsg/profile-displayphoto-shrink_800_800/0/1696689888242?e=2147483647&v=beta&t=z25_tCAyQueic_Rp1WJb_pwfeVvkLDTvW3A9WNNp2Rg",
    "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-674010.jpg&fm=jpg",
    "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-674010.jpg&fm=jpg",
    "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-674010.jpg&fm=jpg",
    "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-674010.jpg&fm=jpg",
    "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-674010.jpg&fm=jpg",
    "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-674010.jpg&fm=jpg",
    "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?cs=srgb&dl=pexels-james-wheeler-414612.jpg&fm=jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Instagram",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic),
          ),
          actions: const [
            Icon(Icons.favorite),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.message_rounded,
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: profile.length,
                  itemBuilder: ((context, index) {
                    return CircleAvatar(
                      radius: 50,

                        //   child: ,
                        // )

                        // Column(children: [
                        //  Container(
                        //   height: 100,
                        //   width: 100,
                        //   decoration: BoxDecoration(
                        //     border: Border.all(
                        //       color: Color.fromARGB(255, 149, 81, 81)),
                        //     //borderRadius: BorderRadius.circular(100),
                        //     shape: BoxShape.circle
                        //   ),

                        child: Image.network(
                      profile[index],

                      //fit: BoxFit.fill,
                    ));
                  }))
            ],
          ),
        ));
  }
}
