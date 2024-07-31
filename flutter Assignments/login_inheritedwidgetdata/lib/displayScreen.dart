import 'package:flutter/material.dart';
import 'package:login_inheritedwidgetdata/main.dart';

class displaySreen extends StatefulWidget {
  const displaySreen({super.key});

  @override
  State createState() => _displayScreen();
}

class _displayScreen extends State {
  @override
  Widget build(BuildContext context) {
    final ShareData localdata = ShareData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Info"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Text(
                "Id : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            Text(
                "${localdata.Id}",
                style:const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Row(
            children: [
              const Text(
                "Name : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            Text(
                "${localdata.Name}",
                style:const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Row(
            children: [
              const Text(
                "UserName : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            Text(
                "${localdata.UserName}",
                style:const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    );
  }
}
