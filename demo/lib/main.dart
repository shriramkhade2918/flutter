import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'pacakge:developer.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // try {
  //   await Firebase.initializeApp(
  //     options: FirebaseOptions(
  //       apiKey: "AIzaSyD-cm1veTLFlnAJkb4y-JEAF4vITxM7nZ8",
  //       appId: "1:654631845825:android:2fac761cc9b981da3ff940",
  //       messagingSenderId: "654631845825",
  //       projectId: "fir-auth-e4abf",
  //     ),
  //   );
  // } catch (e) {
  //   log("$e");
  // }
  // log("No Error");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: Text('Hello World!'))),
    );
  }
}
