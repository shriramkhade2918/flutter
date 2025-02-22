import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:info_snap/View/HomeScreen.dart';

Future<void> getData() async {
  Uri url = Uri.parse(
      "https://newsapi.org/v2/everything?q=tesla&from=2025-01-16&sortBy=publishedAt&apiKey=f2e5db46480c43bb8f355cd90804d3ba");
  http.Response responce = await http.get(url);
  var responceData = json.decode(responce.body);
  log(responce.body);
  newsData = responceData['articles'];
}
