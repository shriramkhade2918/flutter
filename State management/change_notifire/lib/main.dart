// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Data(),
        )
      ],
      child: const MaterialApp(
        home: MyApp(),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State createState() => MyAppState();
}

class MyAppState extends State {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, dataProvider, child) => Scaffold(
        appBar: AppBar(
          title: const Text("Provider"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              child: ListView.builder(
                  itemCount: dataProvider.empInfo.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                        child: Column(
                          children: [
                            Text(
                                "name: ${dataProvider.empInfo[index]["name"]}"),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                                "company: ${dataProvider.empInfo[index]["company"]}"),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                                "salary: ${dataProvider.empInfo[index]["salary"]}"),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Name"),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: name,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("salary"),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: salary,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("company"),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: company,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                // Navigator.pop(context);
                                dataProvider.addinfo(context);
                              },
                              child: const Text("Submit"))
                        ],
                      )
                    ],
                  ));
        }),
      ),
    );
  }
}

TextEditingController name = TextEditingController();
TextEditingController company = TextEditingController();
TextEditingController salary = TextEditingController();

class Data extends ChangeNotifier {
  List<Map> empInfo = [
    {
      "name": "dada",
      "company": "TCS",
      "salary": 10,
    }
  ];
  void addinfo(BuildContext context) {
    if (name.text.isNotEmpty &&
        salary.text.isNotEmpty &&
        company.text.isNotEmpty) {
      Map data = {
        "name": name.text,
        "company": company.text,
        "salary": int.parse(salary.text),
      };
      empInfo.add(data);
    }
    cleardata();
    // Navigator.pop(context);

    notifyListeners();
  }

  cleardata() {
    name.clear();
    salary.clear();
    company.clear();
  }
}
