import 'dart:developer' as dev;
// import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_task/controller/controler.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:http/http.dart' as http;

class ShowData extends StatefulWidget {
  const ShowData({super.key});

  @override
  State<ShowData> createState() => _ShowDataState();
}

List showData = [];

class _ShowDataState extends State<ShowData> {
  bool flag = true;
  @override
  void initState() {
    super.initState();
    getData().then((value) {
      setState(() {});
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Data"),
      ),
      body: (showData.isEmpty)
          ? Center(
              child: CircularProgressIndicator(
                semanticsLabel: "Loading",
                // backgroundColor: Colors.black,
                strokeAlign: BorderSide.strokeAlignCenter,
                color: Colors.green,
              ),
            )
          : ListView.builder(
              itemCount: showData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(0, 0, 0, .1)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Name : ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "${showData[index]['name']}",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                dev.log('in bottom sheet');
                                showModelBottumSheet(true, index);
                                // setState(() {});
                              },
                              child: Icon(
                                Icons.edit,
                                color: Colors.green,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                deletData(index);
                                // getData();
                                showData.removeAt(index);
                                setState(() {});
                              },
                              child: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Description : ",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "${showData[index]['modifier_group_description']}",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              "SKU: ",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "${showData[index]['PLU']}",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              "MaxQuantity: ",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "${showData[index]['max']}",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              "MinQuantity : ",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "${showData[index]['min']}",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModelBottumSheet(false);
        },
        child: Text(
          "Add",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  TextEditingController name = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController sku = TextEditingController();
  TextEditingController max = TextEditingController();
  TextEditingController min = TextEditingController();

  void editData(int index) {
    showData[index]["name"] = name.text.trim();
    showData[index]["modifier_group_description"] = description.text.trim();
    // showData[index]["name"] = name.text.trim();
    showData[index]["min"] = int.parse(min.text.trim());
    showData[index]["max"] = int.parse(max.text.trim());
  }

  void clearcontroller() {
    name.clear();
    description.clear();
    sku.clear();
    max.clear();
    min.clear();
    Navigator.pop(context);
  }

  void showModelBottumSheet(bool flag, [int? index]) {
    if (flag == true) {
      name.text = showData[index!]["name"];
      description.text = showData[index]["modifier_group_description"];
      sku.text = showData[index]["PLU"];
      max.text = showData[index]["max"].toString();
      min.text = showData[index]["min"].toString();
    }
    showModalBottomSheet(
      scrollControlDisabledMaxHeightRatio: .8,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Fill Information",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Text(
                "Name ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              TextField(
                controller: name,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              Text(
                "Description ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              TextField(
                controller: description,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              Text(
                "SKU ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              TextField(
                controller: sku,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              Text(
                "MaxQuantity ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              TextField(
                controller: max,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              Text(
                "MinQuantity ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              TextField(
                controller: min,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        fillData(flag, index);
                      },
                      child: Text(
                        "ADD",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ))
                ],
              )
            ],
          ),
        );
      },
    );
  }

  void fillData(bool flag, [int? index]) {
    if (!flag) {
      if (name.text.isNotEmpty &&
          description.text.isNotEmpty &&
          sku.text.isNotEmpty &&
          max.text.isNotEmpty &&
          min.text.isNotEmpty) {
        var data = {
          "PLU": sku.text.trim(),
          "name": name.text.trim(),
          "modifier_group_description": description.text.trim(),
          "min": int.parse(min.text.trim()),
          "max": int.parse(max.text.trim()),
          "active": true,
          "vendorId": 1
        };
        postData(data);
        clearcontroller();
      } else {
        Fluttertoast.showToast(
            msg: "Fill All Information",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            // timeInSecForIosWeb: 10,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
        // ScaffoldMessenger.of(context)
        //     .showSnackBar(SnackBar(content: Text("Fill All Information")));
        // // setState(() {});
      }
    } else {
      if (name.text.isNotEmpty &&
          description.text.isNotEmpty &&
          sku.text.isNotEmpty &&
          max.text.isNotEmpty &&
          min.text.isNotEmpty) {
        var data = {
          "PLU": showData[index!]['PLU'],
          "name": showData[index]['name'],
          "name_locale": name.text.trim(),
          "modifier_group_description": showData[index]
              ['modifier_group_description_locale'],
          "modifier_group_description_locale": description.text.trim(),
          "min": int.parse(min.text.trim()),
          "max": int.parse(max.text.trim()),
          "active": true,
          "vendorId": 1
        };
        // postData(data);
        editData(index);
        patchData(data, showData[index]['id']);

        clearcontroller();
      } else {
        Fluttertoast.showToast(
            msg: "Fill All Information",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            // timeInSecForIosWeb: 10,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    }

    setState(() {});
  }
}
