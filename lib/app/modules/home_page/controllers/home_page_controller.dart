import 'package:get/get.dart';

import '../../../data/news_service.dart';
import '../../../models/news_model.dart';

class HomePageController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<NewsModel> listNews = <NewsModel>[].obs;
  final newsService = NewsService();

  @override
  void onInit() {
    super.onInit();
    getNews();
  }

  getNews() async {
    isLoading(true);
    try {
      final response = await newsService.getNews();
      response.map((v) {
        print(v);
        final news = NewsModel.fromJson(v);
        listNews.add(news);
      }).toList();
      isLoading(false);
    } catch (e) {
      isLoading(false);
      print(e.toString());
    }
  }
}
