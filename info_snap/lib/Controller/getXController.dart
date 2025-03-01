import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:info_snap/Model/newsModel.dart';

class NewsController extends GetxController {
  Rx<int> selectedindex = 0.obs;

  Rx<bool> isLoading = true.obs;

  var saveNewsList = <Article>[].obs;

  var newsData = <Article>[].obs;

  var watchedNews = <Article>[].obs;
  @override
  void onInit() {
    log('${newsData.runtimeType}');
    getData();
    super.onInit();
  }

  void changeSelectedIndex(int selectedindex) {
    this.selectedindex.value = selectedindex;
    update();
  }

  void addWachedNewsData(Article obj) {
    watchedNews.add(obj);
  }

  void addSaveNewsData(Article obj) {
    saveNewsList.add(obj);
  }

  Future<void> getData() async {
    Uri url = Uri.parse(
        "https://newsapi.org/v2/everything?q=tesla&from=2025-01-28&sortBy=publishedAt&apiKey=1ef32fce91594220bad940d05c9b91cc");
    http.Response responce = await http.get(url);
    var responceData = json.decode(responce.body);
    // log(responce.body);
    var fetchedArticles = (responceData['articles'] as List)
        .map((e) => Article.fromJson(e))
        .toList();
    newsData.value = fetchedArticles;
    isLoading.value = false;
  }
}
