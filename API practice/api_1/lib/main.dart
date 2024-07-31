import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MainApp());
}
List data=[];
class MainApp extends StatefulWidget {
  const MainApp({super.key});
  State createState()=>MainAppState();
}
class MainAppState extends State{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Column(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );
  }


void ApiData() async {
  final uri = '';
  final url = Uri.parse(uri);
  final responce = await http.get(url);
  final body = responce.body;
  final json = jsonDecode(body);
  setState(() {
    data=json[];
  });
}
}