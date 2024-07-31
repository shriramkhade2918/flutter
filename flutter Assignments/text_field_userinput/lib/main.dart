import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: textField(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class textField extends StatefulWidget {
  const textField({super.key});

  @override
  State createState() => _TextFieldState();
}

class _TextFieldState extends State {
  final TextEditingController _nameControler = TextEditingController();
  final FocusScopeNode _nameFocus = FocusScopeNode();
  String str = "";
  List<String> name = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: _nameControler,
            focusNode: _nameFocus,
            decoration: InputDecoration(
                hintText: "Enter your name",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.pink,
                    ))),
            cursorColor: Colors.amber,

            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.phone,
            onChanged: (value) {
              str = value;
             // print("value =$value");
            },
            onSubmitted: (value) {
              
              setState(() {
                name.add(value);
                
              });
              //print("Submited Data=$value");
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: name.length,
            itemBuilder: ((context, index) {
              return Container(
                height: 30,
                width: 250,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  //boxShadow:
                ),
                child: Text(name[index],
                
                textAlign: TextAlign.center,
                ),
              );
            }),
          ),
         
        ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //name.add(value);
          
          setState(() {
            name.add(str);
          });
        },
        child: const Text("Add"),
      ),
    );
  }
}
