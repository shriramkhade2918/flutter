import 'package:flutter/material.dart';
import 'package:inherited_widget/main.dart';

class BillPage extends StatefulWidget {
  const BillPage({super.key});

  @override
  State createState() => _billPageState();
}

class _billPageState extends State {
  @override
  Widget build(BuildContext context) {
  SharedDate localdata = SharedDate.of(context);

    return Scaffold(
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Total bill = ${localdata.bill}",
        style:const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500
        ),
        ),
            ],
          )],
      ),
    );
  }
}
