import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:info_snap/View/HomeScreen.dart';

import 'View/bottomNaviagetion.dart';
import 'View/loginPage.dart';
import 'View/signin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home:SignIn(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// class Wrapper extends StatelessWidget {
//   const Wrapper({super.key});
//   Widget build(BuildContext context){
//     if
//   }
// }
