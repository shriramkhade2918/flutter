import 'package:chat_app/model/usermodel.dart';
import 'package:chat_app/pages/searchScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final UserModel userModel;
  final User firebaseUser;

  const HomeScreen(
      {super.key, required this.userModel, required this.firebaseUser});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "Chat App",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Center(child: Text("HomePage")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SearchScreen(
                      userModel: widget.userModel,
                      firebaseUser: widget.firebaseUser)));
        },
        child: const Icon(Icons.search_rounded),
      ),
    );
  }
}
