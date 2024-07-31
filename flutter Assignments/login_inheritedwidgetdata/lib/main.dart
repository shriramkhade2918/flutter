import 'package:flutter/material.dart';
import 'package:login_inheritedwidgetdata/displayScreen.dart';
import 'package:login_inheritedwidgetdata/modelclass.dart';

void main() {
  runApp(const MyApp());
}

class ShareData extends InheritedWidget {
  int? Data;
   String? Id;
   String? Name;
   String? UserName;
   ShareData({
    this.Data,
    super.key,
    required super.child,
  });
  static ShareData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType()!;
  }

  @override
  bool updateShouldNotify(ShareData sharedata) {
    return Data != sharedata.Data;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShareData(
      child: const MaterialApp(
        home: LoginScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State {
  final TextEditingController idcontroller = TextEditingController();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController usercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final localdata = ShareData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Inherited Widget"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const ModelClass(infoType: " Id "),
          // const SizedBox(
          //   height: 10,
          // ),
          // const ModelClass(infoType: " Name"),
          // const SizedBox(
          //   height: 10,
          // ),
          // const ModelClass(infoType: " UserName"),
          // const SizedBox(
          //   height: 10,
          // ),
          const Text(
            "Id",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          TextFormField(
            controller: idcontroller,
            validator: (value) {
              if (idcontroller.text.isEmpty) {
                return "Enter valid Id";
              }
            },
            decoration: const InputDecoration(
              hintText: "Enter Id",
              label: Text("Enter Id"),
              border: OutlineInputBorder(),
            ),
            onSaved: (newValue) {
              //  bool formvalidation= formkey.currentState.;
            },
          ),
          const Text(
            "Name",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          TextFormField(
            controller: namecontroller,
            validator: (value) {
              if (namecontroller.text.isEmpty) {
                return "Enter valid Name";
              }
            },
            decoration: const InputDecoration(
              hintText: "Enter Name",
              label: Text("Enter Name"),
              border: OutlineInputBorder(),
            ),
            onSaved: (newValue) {
              //  bool formvalidation= formkey.currentState.;
            },
          ),
          const Text(
            "UserName",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          TextFormField(
            controller: usercontroller,
            validator: (value) {
              if (usercontroller.text.isEmpty) {
                return "Enter valid Username";
              }
            },
            decoration: const InputDecoration(
              hintText: "Enter Username",
              label: Text("Enter Username"),
              border: OutlineInputBorder(),
            ),
            onSaved: (newValue) {
              //  bool formvalidation= formkey.currentState.;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  if (usercontroller.text.isNotEmpty &&
                      idcontroller.text.isNotEmpty &&
                      namecontroller.text.isNotEmpty) {
                    localdata.Id = idcontroller.text;
                    localdata.Name = namecontroller.text;
                    localdata.UserName = usercontroller.text;
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>const displaySreen())
                    
                    );
                  }

               
                    
                    idcontroller.clear();
                    namecontroller.clear();
                    usercontroller.clear();
                  
                },
                child: Container(
                  height: 40,
                  color: Colors.amber,
                  child: const Text(
                    "Submit",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
