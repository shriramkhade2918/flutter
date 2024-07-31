import 'package:expense_manager/categories.dart';
import 'package:expense_manager/tranjection_Screen.dart';
import 'package:flutter/material.dart';
// import 'splashscreen.dart';
// import 'login_screen.dart';
// import 'register_screen.dart';
// import 'tranjection_Screen.dart';
// import 'categories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
@override
  Widget build(BuildContext context) {
    return const MaterialApp(
    // home: ExpenseManager(),
    home: TranjectionSreen(),
    debugShowCheckedModeBanner: false,
    // theme: ThemeData(drawerTheme: DrawerThemeData()),    debugShowCheckedModeBanner: false,
    );
  }
}
