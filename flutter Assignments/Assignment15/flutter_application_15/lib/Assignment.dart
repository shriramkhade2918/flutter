import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  bool flag = true;
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      if (flag) {
        _counter++;
      } else {
        _counter--;
      }
      if (_counter >=6) {
        flag = false;
      } else if (_counter <= 0) {
        flag = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Portfolio",
    
          ),
          centerTitle: true,

        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  (_counter >= 1)
                      ? const Text("Name:Shriram Khade")
                      : const Text(" "),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  (_counter >= 2)
                      ? const Image(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO36RQ0tjV_RtSl-wEDtWsginCQdhVjYFV0EHeVENRBb_2WLjGSeIjclpIRLVcUcE5Re4&usqp=CAU"),
                      height: 250,
                      width: 100,
                        )
                      : const Image(
                        image:NetworkImage(""),
                        height: 250,
                        width: 100,
                      )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  (_counter >= 3)
                      ? const Text("Collage : Zeal Collage Of Enginearing")
                      : const Text(" "),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  (_counter >= 4)
                      ? const Image(
                        image: NetworkImage(
                            "https://images.shiksha.com/mediadata/images/1660115784phplJc53T.png"),
                        height: 200,
                        width: 100,
                      )
                      : const Image(
                        image:NetworkImage(""),
                        height: 200,
                        width: 100,
                      )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  (_counter >= 5)
                      ? const Text("Dream Company: Microsoft")
                      : const Text(" "),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  (_counter >= 6)
                      ? const Image(
                        image: NetworkImage(
                            "https://www.shutterstock.com/image-vector/microsoft-logo-icon-png-isolated-260nw-2306949595.jpg"),
                        height: 200,
                        width: 100,
                      )
                      : Image(image: 
                        
                        
                    
                ],
              ),
              
            ],
          ),
          
        ),
        floatingActionButton: FloatingActionButton( onPressed: _incrementCounter,
                      child: const Icon(
                        Icons.next_plan_sharp,
                        size: 40,
                        
                      )),
        );
  }
}
