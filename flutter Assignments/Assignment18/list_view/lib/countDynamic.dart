import 'package:flutter/material.dart';

class countDynamic extends StatefulWidget {
  const countDynamic({super.key});

  @override
  State<countDynamic> createState() => _countDynamicState();
}

class _countDynamicState extends State<countDynamic> {
  int _count = 0;
  List<int> countList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dyanamic-List-View"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: countList.length,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.blue,
              margin: const EdgeInsets.all(10),
              child: Text("${countList[index]}"),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ++_count;
            countList.add(_count);
          });
        },
      ),
    );
  }
}
