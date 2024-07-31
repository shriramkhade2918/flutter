import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      child: const MaterialApp(
        home: MainApp(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State createState() => _MainAppState();
}

class _MainAppState extends State {
  GlobalKey formkey = GlobalKey();
  TextEditingController username = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            TextFormField(
              controller: username,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the username";
                }
              },
              decoration: const InputDecoration(

                  // hintText: "enter username",
                  label: Text("enter username"),
                  border: OutlineInputBorder()),
            ),
            TextFormField(
              controller: pass,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the password";
                } else {
                  for (int i = 0; i < value.length; i++) {
                    var ch = value.charAt(i);
                  }
                }
              },
              decoration: const InputDecoration(
                // hintText: "enter username",
                label: Text("enter password"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.green)),
                enabledBorder: InputBorder.none,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AppData extends ChangeNotifier {
  AppData();
}
