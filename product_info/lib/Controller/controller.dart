import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:product_info/View/showData.dart';

Future<void> getData([int? index]) async {
  Uri url = Uri.parse(
      'http://213.210.36.38:8001/pos/allCategory/?vendorId=1&language=English');

  http.Response response = await http.get(url);
  log(response.body);
  var jsonData = jsonDecode(response.body);
  productData = jsonData['categories'];
}
Future<void> getProductcategiryData(int? index) async {
  Uri url = Uri.parse(
      'http://213.210.36.38:8001/pos/productByCategory/$index/?vendorId=1&language=English');

  http.Response response = await http.get(url);
  log(response.body);
  var jsonData = jsonDecode(response.body);
  productCategiryData = jsonData['products']['$index'];
}
