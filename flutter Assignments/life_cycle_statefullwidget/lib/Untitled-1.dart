import 'package:flutter/material.dart';



class LifeCycleState extends StatefulWidget {
  const LifeCycleState({super.key});

  @override
  State createState() => _LifeCycleStateFullState();
}

class _LifeCycleStateFullState extends State {
  @override
  void initState() {
    super.initState();
    print("in method initState");
  }

  @override
  void didUpdateWidget(covariant oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("in method didUpdateWidget");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("in method didChangeDependencies");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("in method deactivate");
  }

  @override
  void activate() {
    super.activate();
    print("in method activate");
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    print("in set state method");
  }

  @override
  void dispose() {
    super.dispose();
    print("in method dispose");
  }

  int count = 0;
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    print("in build method");
    return returnScaffold();
  }

  Scaffold returnScaffold() {
    if (count <= 4) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("LifeCycle StatefulWidget"),
        ),
        body: Column(
           
           
            children: [
              Container(
                height: 100,
                width: 100,
                color: flag ? Colors.amber : Colors.black,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      flag = !flag;
                      count++;
                    });
                  },
                  child: const Text("button1")),
            ]),
            bottomNavigationBar: BottomNavigationBar(
              items:const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
              ),
               BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
              ),
               BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
              ),
              
            ]),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text("LifeCycle StatefulWidget"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: flag ? Colors.red : Colors.green,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      flag = !flag;
                      // count--;
                    });
                  },
                  child: const Text("button2")),
            ]),
      );
    }
  }
}
