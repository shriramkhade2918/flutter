import 'package:flutter/material.dart';
import 'package:inherited_widget/billpage.dart';
import 'modelclass.dart';

void main() {
  runApp(const MyApp());
}

class SharedDate extends InheritedWidget {
  double bill = 0;
  final int Data;
  SharedDate({
    super.key,
    required this.Data,
    required super.child,
  });
  static SharedDate of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType()!;
  }

  @override
  bool updateShouldNotify(SharedDate sharedData) {
    return Data != sharedData.Data;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedDate(
      Data: 0,
      child: const MaterialApp(
        home: IngheritedWidgetDemo(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class IngheritedWidgetDemo extends StatelessWidget {
  const IngheritedWidgetDemo({super.key});
  @override
  Widget build(BuildContext context) {
    final SharedDate localdata = SharedDate.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Inherited Widget"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Menu Card",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          Menuecard(
            food: "paneer tikka",
            rate: 100,
          ),
          const SizedBox(
            height: 10,
          ),
          Menuecard(
            food: "vej Biryani",
            rate: 120,
          ),
          const SizedBox(
            height: 10,
          ),
          Menuecard(
            food: "vej-Kolhapuri",
            rate: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
             Navigator.push(
                context,
               MaterialPageRoute(builder: (context) => const BillPage()),
                );
            },
            child: Container(
              height: 40,
              alignment: Alignment.center,
              width: 100,
              color: Colors.cyan,
              child: const Text(
                "Next",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
