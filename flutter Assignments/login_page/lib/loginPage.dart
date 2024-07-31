import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State createState() => _LoginPageState();
}

final TextEditingController _username = TextEditingController();
final TextEditingController _name = TextEditingController();
final TextEditingController _password = TextEditingController();
GlobalKey<FormState> _formKey = GlobalKey<FormState>();
GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
// GlobalKey<FormFieldState> _user = new GlobalKey<FormFieldState>();
// GlobalKey<FormFieldState> _pass = new GlobalKey<FormFieldState>();

class _LoginPageState extends State {
  @override
  bool flag = false;
  Scaffold returnScaffold() {
    if (flag == false) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                
                const SizedBox(
                  height: 20,
                  
                ),
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvUzwXGtnqFsRFBFgYVqSzFrSoib3I7bEIzBf-xVEtpu_uH3CA2owWXFd8nvUnKEwIuVw&usqp=CAU",
                height: 100,
                width: 100,),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _username,
                  // key: _user,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    hintText: "Eneter Username",
                    label: const Text("Eneter Username"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  validator: (value) {
                    print("Username Validator");
                    if (value == null || value.isEmpty) {
                      return "Enter UserName";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  // key: _pass,
                  controller: _password,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    hintText: "Eneter Password",
                    label: const Text("Eneter Password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  validator: (value) {
                    print("Password Validator");
                    if (value == null || value.isEmpty) {
                      return "Enter Password";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () async {
                      // _user.currentState!.validate();
                      // _pass.currentState!.validate();
                      bool loginValidated = _formKey.currentState!.validate();
                      await checkverify();

                      if (loginValidated && verify) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Login Succesfully")));
                        verify = false;
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Login Failled")));
                      }
                      setState(() {});
                    },
                    child: const Text("Login")),
                Container(
                  height: 2,
                  width: 200,
                  color: Colors.black,
                ),
                ElevatedButton(
                    onPressed: () {
                      _password.clear();
                      _username.clear();
                      flag = true;
                      setState(() {});
                    },
                    child: const Text("SignUp")),
              ],
            ),
          ),
        ),
      );
    } else {
      //SignUp
      return Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formKey1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.network("https://ir.signupsoftware.com/wp-content/uploads/2021/10/Signup-logotype-Standard-1.png",
                height: 100,
                width: 100,
                ),
                TextFormField(
                  controller: _name,
                  // key: _user,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    hintText: "Eneter name",
                    label: const Text("Eneter name"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  validator: (value) {
                    print("Username Validator");
                    if (value == null || value.isEmpty) {
                      return "Enter Name";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _username,
                  // key: _user,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    hintText: "Eneter Username",
                    label: const Text("Eneter Username"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  validator: (value) {
                    print("Username Validator");
                    if (value == null || value.isEmpty) {
                      return "Enter UserName";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  // key: _pass,
                  controller: _password,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    hintText: "Eneter Password",
                    label: const Text("Eneter Password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  validator: (value) {
                    print("Password Validator");
                    if (value == null || value.isEmpty) {
                      return "Enter Password";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 2,
                  width: 200,
                  color: Colors.black,
                ),
                ElevatedButton(
                    onPressed: () {
                      // flag = !flag;
                      bool loginValidated = _formKey1.currentState!.validate();
                      
                     
                      if (loginValidated) {
                         Map data = {
                        "name": _name.text,
                        _username.text: _password.text,
                      };
                      login.add(data);
                      //clear controller
                        _name.clear();
                        _password.clear();
                        _username.clear();
                        flag = !flag;
                      }

                      setState(() {});
                    },
                    child: const Text("SignUp")),
              ],
            ),
          ),
        ),
      );
    }
  }

  bool verify = false;

  List<Map> login = [];

  Future<void> checkverify() async {
    print("In checkverify");
    for (int i = 0; i < login.length; i++) {
      if (login[i][_username.text] == _password.text) {
        verify = true;
      }
    }
  }

  Widget build(BuildContext context) {
    return returnScaffold();
  }
}
