import 'package:chat_app/model/usermodel.dart';
import 'package:chat_app/pages/homepage.dart';
import 'package:chat_app/pages/signUpPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State createState() => LoginScreenState();
}

TextEditingController emailControler = TextEditingController();
TextEditingController passwordControler = TextEditingController();

class LoginScreenState extends State {
  void checkValue() {
    String email = emailControler.text.trim();
    String password = passwordControler.text.trim();
    if (email == "" || password == "") {
      // ScaffoldMessenger.of
      print("plz fill Above the fields");
    } else {
      print("login In Succesfully");
      login(email, password);
    }
  }

  void login(String email, String password) async {
    UserCredential? userCredential;
    try {
      userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (ex) {
      print(ex.code.toString());
    }
    if (userCredential != null) {
      String uid = userCredential.user!.uid;
      DocumentSnapshot userData =
          await FirebaseFirestore.instance.collection('users').doc(uid).get();
      UserModel userModel =
          UserModel.frommap(userData.data() as Map<String, dynamic>);
      print("login succesful");
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomeScreen(
                  userModel: userModel, firebaseUser: userCredential!.user!)));
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
            CupertinoButton(
              onPressed: () {
                checkValue();
                setState(() {});
              },
              color: Theme.of(context).colorScheme.secondary,
              child: const Text("LogIn"),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don't have Acoount?",
              style: TextStyle(fontSize: 16),
            ),
            CupertinoButton(
              onPressed: () {
                checkValue();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpScreen(),
                  ),
                );
              },
              child: const Text(
                "Sign Up",
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
