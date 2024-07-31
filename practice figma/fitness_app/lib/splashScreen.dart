import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  Splash({super.key});

  @override
  State createState() => SplashScreen();
}

class SplashScreen extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "SplashScreen "
      ),
    );
  }
}
