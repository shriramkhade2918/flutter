import 'dart:convert';
import 'dart:developer';

import 'package:flutter_task/View/showData.dart';
import 'package:http/http.dart' as http;

void deletData(int index) async {
  int id = showData[index]['id'];

  Uri url = Uri.parse(
      "https://megameal.twilightparadox.com/pos/setting/modifier_group/$id/?vendorId=1");
  http.Response responce = await http.delete(url);

  log("${responce.body} ,deleted");
}

void patchData(Map<String, dynamic> data, int index) async {
  String jsonData = jsonEncode(data);

  Uri url = Uri.parse(
      "https://megameal.twilightparadox.com/pos/setting/modifier_group/$index/?vendorId=1");

  http.Response responce = await http.patch(
    url,
    headers: {
      "Content-Type": "application/json", // ✅ Set proper Content-Type
      "Accept": "application/json", // (Optional) Ask for JSON response
    },
    body: jsonData,
  );
  log(responce.body);
  // setState(() {});
  getData();
}

void postData(Map<String, dynamic> data) async {
  showData.add(data);
  String jsonData = jsonEncode(data);
  Uri url = Uri.parse(
      "https://megameal.twilightparadox.com/pos/setting/modifier_group/");

  http.Response responce = await http.post(
    url,
    headers: {
      "Content-Type": "application/json", // ✅ Set proper Content-Type
      "Accept": "application/json", // (Optional) Ask for JSON response
    },
    body: jsonData,
  );
  log(responce.body);
}

Future getData() async {
  Uri url = Uri.parse(
      "https://megameal.twilightparadox.com/pos/setting/modifier_group/?vendorId=1&page=1&page_size=10");

  http.Response response = await http.get(url);
  log(response.body);
  var responceData = json.decode(response.body);
  showData = responceData['results'];

}
