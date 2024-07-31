import 'package:advance_quiz_app/quize_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'home_Sreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State createState() => _MainAppState();
}

class _MainAppState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        alignment: Alignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration:const BoxDecoration(
                image: DecorationImage(image: AssetImage("images/backgroundimage1.png"),
                fit: BoxFit.cover
                )
              ),
              // child: Image.asset("images/Logo.png"),
            ),

          ),
          //  Image.asset("images/Logo.png"),
           Image.asset("images/Logo.png"),
        ],
      ),
    );
  }
}
