import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: textField_portfolio(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class textField_portfolio extends StatefulWidget {
  const textField_portfolio({super.key});

  @override
  State createState() => _textfield_portfolioState();
}

class _textfield_portfolioState extends State {
  String _UserName = "";
  String _companyName = "";
  String _companyLocation = "";

  List<Map> info = [];
  bool flag = false;
  Widget returnWidget() {
    if (flag == true) {
      return Expanded(child:
       ListView.builder(
          itemCount: info.length,
          shrinkWrap: true,
          itemBuilder: ((context, index) {
            return Container(
                height: 150,
                width: 400,
                //color: Colors.amber,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    border: Border.all(color: Colors.black)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                     Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 25,
                              ),
                              Text("Name : ${info[index]["name"]}"),
                              const SizedBox(
                                height: 15,
                              ),
                              Text("Company : ${info[index]["company"]}"),
                              const SizedBox(
                                height: 15,
                              ),
                              Text("Name : ${info[index]["location"]}"),
                            ],
                          ),
                       
                    const SizedBox(
                      width: 20,
                    ),
                    // Column(
                    //   children: [
                    //     const SizedBox(
                    //       height: 10,
                    //     ),
                    //     SizedBox(
                    //       height: 130,
                    //       width: 150,
                    //       child: Image.network("${info[index][val]}"),
                    //     )
                    //   ],
                    // )
                  ],
                ));
          }))
      );
    } else {
      return const SizedBox(
        height: 150,
        width: 400,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "TextField_Portfolio",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
            color: Colors.orange,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  fillColor: Colors.amber,
                  hintText: "Enter Name"),
              onChanged: (value) {
                print(value);
              },
              onSubmitted: (value) {
                _UserName = value;
              }),
          const SizedBox(height: 5),
          TextField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                hintText: "Enter CompanyName",
                fillColor: Colors.amber),
            onChanged: (value) {
              print(value);
            },
            onSubmitted: (value) {
              _companyName = value;
            },
          ),
          const SizedBox(height: 5),
          TextField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                hintText: "Enter Company Location",
                fillColor: Colors.amber),
            onChanged: (value) {
              print(value);
            },
            onSubmitted: (value) {
              _companyLocation = value;
            },
          ),
          const SizedBox(
            height: 5,
          ),
          const SizedBox(height: 10),
          // TextField(
          //   decoration: const InputDecoration(
          //       border: OutlineInputBorder(
          //           borderRadius: BorderRadius.all(Radius.circular(25))),
          //       hintText: "Enter Company ImageLink",
          //       fillColor: Colors.amber),
          //   onChanged: (value) {
          //     print(value);
          //   },
          //   onSubmitted: (value) {
          //     _companyImageLink = value;
          //     userInfo.add(value);
          //   },
          // ),
          ElevatedButton(
              onPressed: () {
                flag = true;
                Map user = {
                  "name": _UserName,
                  "company": _companyName,
                  "location": _companyLocation
                };
                info.add(user);

                setState(() {});
              },
              child: const Text("Submit")),
          const SizedBox(
            height: 5,
          ),
          returnWidget(),

          ///Container(
          // height: 150,
          // width: 400,
          // //color: Colors.amber,
          // decoration: BoxDecoration(
          //     borderRadius: BorderRadius.all(Radius.circular(25)),
          //     border: Border.all(color: Colors.black)),
          // child: Row(
          //   children: [
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         const SizedBox(
          //           height: 25,
          //         ),
          //         Text("Name : $_UserName"),
          //         const SizedBox(
          //           height: 15,
          //         ),
          //         Text("Dream Company : $_companyName"),
          //         const SizedBox(
          //           height: 15,
          //         ),
          //         Text("Name : $_companyLocation"),
          //       ],
          //     ),
          //     const SizedBox(
          //       width: 20,
          //     ),
          //     Column(
          //       children: [
          //         const SizedBox(
          //           height: 10,
          //         ),
          //         SizedBox(
          //           height: 130,
          //           width: 180,
          //           child: Image.network("$_companyImageLink"),
          //         )
          //       ],
          //     )
          //   ],
          // ))
        ],
      ),
    );
  }
}
