import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PlayStore(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PlayStore extends StatefulWidget {
  const PlayStore({super.key});

  @override
  State createState() => _PlayStoreState();
}

class _PlayStoreState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            height: 15,
            width: 300,
            //color: Colors.amber,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: const Color.fromARGB(255, 233, 230, 227),
            ),
            child: Row(
              children: const [
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Search app & games...",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
                Spacer(),
                Icon(
                  Icons.mic_none,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 15,
                )
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.notifications_outlined,
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.supervised_user_circle,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
        backgroundColor: Colors.white,
        shadowColor: Colors.white10,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  shadowColor: MaterialStatePropertyAll(Colors.white10),
                ),
                child: const Text(
                  "For you",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    shadowColor: MaterialStatePropertyAll(Colors.white10),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Top charts",
                    style: TextStyle(color: Colors.black),
                  )),
              const SizedBox(
                width: 5,
              ),
              ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    shadowColor: MaterialStatePropertyAll(Colors.white10),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Kids",
                    style: TextStyle(color: Colors.black),
                  )),
              const SizedBox(
                width: 5,
              ),
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      shadowColor: MaterialStatePropertyAll(Colors.white10),
                      surfaceTintColor: MaterialStatePropertyAll(Colors.black)),
                  onPressed: () {},
                  child: const Text(
                    "Categories",
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 10,
              ),
              Text(
                "Sponsored . ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              Text(
                "Suggested for you",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Icon(Icons.menu_rounded),
              SizedBox(
                width: 10,
              )
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 10,
              ),
              Text(
                "Stylized games",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Icon(Icons.arrow_forward),
              SizedBox(
                width: 10,
              )
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.games), label: "Games"),
        BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Apps"),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: "Books"),
      ]),
    );
  }
}
