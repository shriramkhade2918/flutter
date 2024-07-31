import 'package:flutter/material.dart';
import 'package:inherited_widget/main.dart';

class Menuecard extends StatefulWidget {
  int count = 0;
  final String food;
  final double rate;
  Menuecard({super.key, required this.food, required this.rate});

  @override
  State createState() => _menuCardState();
}

class _menuCardState extends State<Menuecard> {
  @override
  Widget build(BuildContext context) {
    SharedDate localdata = SharedDate.of(context);

    return Container(
      color: Colors.amberAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 100,
            child: Text("${widget.food}"),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 100,
            child: Text("${widget.rate}"),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            color: Colors.amber,
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      widget.count--;
                      if (widget.count < 0) {
                        widget.count = 0;
                      }
                      setState(() {});
                    },
                    child: const Icon(Icons.remove)),
                Container(
                  alignment: Alignment.center,
                  // height: 100,
                  width: 20,
                  child: Text("${widget.count}"),
                ),
                GestureDetector(
                    onTap: () {
                      widget.count++;
                      setState(() {});
                    },
                    child: Icon(Icons.add))
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              localdata.bill = localdata.bill + (widget.rate * widget.count);
              setState(() {
                
              });
            },
            child: Container(
              height: 40,
              alignment: Alignment.center,
              width: 70,
              color: Colors.cyan,
              child: const Text(
                "Add",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
