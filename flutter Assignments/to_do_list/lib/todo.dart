import 'package:flutter/material.dart';

class todpApp extends StatefulWidget {
  const todpApp({super.key});

  @override
  State createState() {
    return _todpAppState();
  }
}

class ModelClass {
  String Name;
  String Dis;
  String Date;

  ModelClass({required this.Name, required this.Dis, required this.Date});
}

List<ModelClass> task = [
  ModelClass(Name: "heelo", Dis: "jdfhudhgf", Date: "sjbfd"),
];

class _todpAppState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TO Do List"),
      ),
      body: ListView.builder(
        itemCount: task.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            width: 410,
            // height: 100,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.amber),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(task[index].Name),
                          Text(task[index].Dis),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Text(task[index].Date),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          return showBootmShhet(false, task[index]);
                        },
                        child: const Icon(Icons.edit),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                          onTap: () => removetask(task[index]),
                          child: const Icon(Icons.delete)),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBootmShhet(true);
          setState(() {});
        },
        child: Text("add"),
      ),
    );
  }

  final TextEditingController _Title = TextEditingController();
  final TextEditingController _dis = TextEditingController();
  final TextEditingController _date = TextEditingController();

  void removetask(ModelClass obj) {
    task.remove(obj);
    setState(() {});
  }

  void claercomtoller() {
    _Title.clear();
    _dis.clear();
    _date.clear();

    navigatorpop();
  }

  void navigatorpop() {
    Navigator.pop(context);
    setState(() {});
  }

  void showBootmShhet(bool flag, [ModelClass? obj]) {
    if (flag == false) {
      _Title.text = obj!.Name;
      _dis.text = obj.Dis;
      _date.text = obj.Date;
    }
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        // width: 100,
        // height: 100,
        color: Colors.white,
        child: Column(
          children: [
            TextField(
              controller: _Title,
              decoration: InputDecoration(hintText: "Title"),
            ),
            TextField(
              controller: _dis,
              decoration: InputDecoration(hintText: "dis"),
            ),
            TextField(
              controller: _date,
             // readOnly: true,
              decoration: InputDecoration(hintText: "date"),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  if (flag == true) {
                    if (_Title.text.isNotEmpty &&
                        _dis.text.isNotEmpty &&
                        _date.text.isNotEmpty) {
                      task.add(ModelClass(
                          Name: _Title.text.trim(),
                          Dis: _dis.text.trim(),
                          Date: _date.text.trim()));
                    }
                  } else {
                    obj!.Name = _Title.text;
                    obj.Dis = _dis.text;
                    obj.Date = _date.text;
                    setState(() {});
                  }
                  claercomtoller();
                },
                child: const Text("submit"))
          ],
        ),
      ),
    );
  }
}
