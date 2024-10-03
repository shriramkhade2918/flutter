import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/model/firebaseHelper.dart';
import 'package:chat_app/model/usermodel.dart';
import 'package:chat_app/pages/homepage.dart';
import 'package:chat_app/pages/loginPage.dart';
import 'package:chat_app/pages/signUpPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/completeProfile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  User? currentUser = FirebaseAuth.instance.currentUser;
  if (currentUser != null) {
    UserModel? thisUserModel =await  FirebaseHelper.getUserModelById(currentUser.uid);

    if(thisUserModel!= null){
    runApp(MainAppLoggedIn(userModel: thisUserModel, fireBaseUser: currentUser));
      
    }
  } else {
    runApp(const MainApp());
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class MainAppLoggedIn extends StatelessWidget {
  // const MainAppLoggedIn({super.key});
  final UserModel userModel;
  final User fireBaseUser;

  const MainAppLoggedIn(
      {super.key, required this.userModel, required this.fireBaseUser});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(userModel: userModel, firebaseUser: fireBaseUser)
    );
  }
}
