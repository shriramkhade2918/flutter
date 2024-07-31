import 'package:flutter/material.dart';

class QuizeUI extends StatefulWidget {
  const QuizeUI({super.key});
  @override
  State<QuizeUI> createState() => _QuizeUIState();
}

class _QuizeUIState extends State<QuizeUI> {
  int _count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "QuizeUI",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
          )),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Question",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text("$_count/10"),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
         const  SizedBox(
          height: 40,
          width: 250,
            child:  Text("Which is your favorate player?"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: (){}, child: const Text("A.virat kolhi")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: (){}, child: const Text("A.virat kolhi")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: (){}, child: const Text("A.virat kolhi")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: (){}, child: const Text("A.virat kolhi")),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){ setState(() {
        
      });},child: const Text("Next"),),
    );
  }
}
