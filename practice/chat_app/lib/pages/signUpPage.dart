import 'dart:developer';

import 'package:chat_app/model/usermodel.dart';
import 'package:chat_app/pages/completeProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

TextEditingController emailControler = TextEditingController();
TextEditingController passwordControler = TextEditingController();
TextEditingController conformPasswordControler = TextEditingController();

class _SignUpScreenState extends State<SignUpScreen> {
  void checkValues() {
    String email = emailControler.text.trim();
    String password = passwordControler.text.trim();
    String cPassword = conformPasswordControler.text.trim();
    if (email == "" || password == "" || cPassword == "") {
      // ScaffoldMessenger.of
      print("plz fill Above the fields");
    } else if (password != cPassword) {
      print("password is not match");
    } else {
      print("Sign In Succesfully");
      signUp(email, password);
    }
  }

  void signUp(String email, String password) async {
    UserCredential? userCredential;
    try {
      userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (ex) {
      log("exception ale ahe");
      print(ex.code.toString());
    }
    if (userCredential != null) {
      String uid = userCredential.user!.uid;
      UserModel newuser = UserModel(
        email: email,
        id: uid,
        name: "",
        profilepic: "",
      );
      log("data uploading");
      await FirebaseFirestore.instance
          .collection("uses")
          .doc(uid)
          .set(newuser.toMap())
          .then((value) {
        log("data uploaded");
        print("new user created");
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CompleteProfile(
              userModel: newuser, fireBaseUser: userCredential!.user!);
        }));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Chat App",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: emailControler,
              decoration: const InputDecoration(
                labelText: "Email Addres",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordControler,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Password"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: conformPasswordControler,
              obscureText: true,
              decoration: const InputDecoration(labelText: " Conform Password"),
            ),
            const SizedBox(
              height: 10,
            ),
            CupertinoButton(
              onPressed: () {
                checkValues();
                setState(() {});
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const CompleteProfile(),
                //   ),
                // );
              },
              color: Theme.of(context).colorScheme.secondary,
              child: const Text("Sign Up"),
            )
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Already have an Acoount?",
            style: TextStyle(fontSize: 16),
          ),
          CupertinoButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Log In",
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
