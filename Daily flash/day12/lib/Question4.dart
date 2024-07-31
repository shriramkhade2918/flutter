import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State createState() => _Question();
}

class _Question extends State {
  // bool flag = true;
  List<Map> name = [];
  final TextEditingController _name = TextEditingController();
  final TextEditingController _clg = TextEditingController();
  // final GlobalKey _namekey = GlobalKey();

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
            TextField(
              // key: _namekey,
              controller: _name,

              decoration: const InputDecoration(
                  label: Text("Enter your name"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
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
            ElevatedButton(
                onPressed: () {
                  print("HEre");
                  Map<String, dynamic> data = {
                    "Name": _name.text,
                    "CollageName": _clg.text
                  };
                  name.add(data);
                  print(name);
                  _name.clear();
                  _clg.clear();
                  setState(() {});
                },
                child: const Text("Submit")),
            Expanded(
              child: SizedBox(
                // height: 400,
                // width: 400,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: name.length,
                    itemBuilder: ((context, index) {
                      return Container(
                        height: 100,
                        width: 400,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Column(children: [
                          Text("${name[index]["Name"]}"),
                          Text("${name[index]["CollageName"]}")
                        ]),
                      );
                    })),
              ),
            )
          ],
        ),
      ),
    );
  }
}
