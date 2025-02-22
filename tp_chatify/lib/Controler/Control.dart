import 'dart:convert';

import 'package:http/http.dart' as https;
import 'package:tp_chatify/view/HomeScreen.dart';

Future<void> getData(String message) async {
  changeData = true;
  var data = jsonEncode({
    "contents": [
      {
        "parts": [
          {"text": message}
        ]
      }
    ]
  });
  Uri url = Uri.parse(
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=AIzaSyAL4coPfc_Zk7QjLckE-sgluECBK7VQBKg");

  https.Response response = await https.post(
    url,
    headers: {"Content-Type": "application/json"},
    body: data,
  );
  var responceData = jsonDecode(response.body);
  Map<String, dynamic> dataFormat = {
    'flag': changeData,
    'data': responceData['candidates'][0]['content']['parts'][0]['text']
  };
  apiData.add(dataFormat);
}
