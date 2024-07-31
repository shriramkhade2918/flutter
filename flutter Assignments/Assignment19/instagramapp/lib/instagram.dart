import 'package:flutter/material.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});
  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  List<String> username = ["abpmajhatv","BMW"];
  List<String> massage = ["abpmajhatv top news network","yfcdyfciyfcyfcfyy"];
  List<String> ProfileImage = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/ABP_Majha_logo.svg/1200px-ABP_Majha_logo.svg.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/BMW_logo_%28gray%29.svg/800px-BMW_logo_%28gray%29.svg.png",
  ];
  List<String> PostImage = [
    "https://feeds.abplive.com/onecms/images/uploaded-images/2023/11/04/bc2b617c6d60dc04f36dcecd2ccfb0de1699103981492290_original.png",
    "https://imgd-ct.aeplcdn.com/1200x900/n/cw/ec/137953/i7-right-front-three-quarter-2.jpeg?isig=0&q=80"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Instagram",
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.favorite_outline_sharp),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.message_rounded),
        ],
        backgroundColor: Colors.black,
      ),
      body: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 ListView.builder(
          itemCount: ProfileImage.length,
          itemBuilder: ((context, index) {
            return
            Row(
              children: [
                
            const SizedBox(
              height: 20,
            ),
                Container(
                  //color: Colors.black,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  height: 50,
                  width: 50,
                  child:
                      ClipOval(child: Image.network(ProfileImage[index])),
                )
              ],
            );
        })),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  height: 50,
                  width: 50,
                  child:
                      ClipOval(child: Image.network(ProfileImage[index])),
                ),
                 Text(username[index]),
                 const Spacer(),
               const   Icon(Icons.menu),
               //ColoredBox(color: Colors.black)
              ],
            ),
            SizedBox(
              height: 300,
              width: 300,
              child: Image.network(PostImage[index]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:const [
                Icon(Icons.favorite_border_outlined),
                 SizedBox(
                  width: 10,
                ),
                Icon(Icons.comment_bank_rounded),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.send_sharp),
                Spacer(),
                Icon(Icons.bookmark_add_outlined),
              ],
            ),
            Row(
              children: [
                Text(massage[index]),
              ],
            )
            
            
              ],
          
          }
          
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            items: const [ 
              BottomNavigationBarItem(
            icon: Icon(Icons.home),
           label: 'home ',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: ' ',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo),
            label: ' ',
            backgroundColor: Colors.amber
           
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.real_estate_agent),
            label: ' ',
         
          ),
          BottomNavigationBarItem(icon:Icon(Icons.account_circle),
          label: ' ')
            ],
            //currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        
            ),
          floatingActionButton: FloatingActionButton(onPressed: (){},
          child: const Text("Home"),),
          //backgroundColor: Colors.amber,
          
    );
  }
}
