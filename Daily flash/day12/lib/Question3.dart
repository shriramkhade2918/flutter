import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State createState() => _Question();
}

class _Question extends State {
  // bool flag = true;
  List<String> name = [];
  final TextEditingController _name = TextEditingController();
  final TextEditingController _clg = TextEditingController();
  final GlobalKey _namekey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily flash 12"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              key:_namekey ,
              controller: _name,
              validator: (value) {
                if(_name.text.isEmpty){
                  const Text("enter your name");
                
                }
                setState(() {
                  
                });
                
              },
              decoration: const InputDecoration(
                  label: Text("Enter your name"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              
              controller: _clg,
              decoration: const InputDecoration(
                  label: Text("Enter your collage"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                
              });
            }, child: const Text("Submit"))
          ],
        ),
      ),
    );
  }
}
