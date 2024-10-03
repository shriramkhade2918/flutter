import 'package:flutter/material.dart';

class RifreShIndicator extends StatefulWidget {
  const RifreShIndicator({super.key});

  @override
  State createState() => RifreShIndicatorState();
}

class RifreShIndicatorState extends State {
  List data = [0];
  num ind = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Refresh Indicator"),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(Duration(seconds: 1));

            data.add(++ind);
            setState(() {});
          },
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text("${data[index]}"),
              color: Colors.amber,
            ),
          ),
        ));
  }
}
