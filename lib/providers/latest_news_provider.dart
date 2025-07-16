import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:news_application1/models/latest_news_model.dart';

class LatestNewsProvider extends ChangeNotifier {
  List<LatestNewsModel> news = [];
  List<LatestNewsModel> filteredNews = [];

  LatestNewsProvider() {
    init();
  }
  Future<void> init() async {
    await fetchLatestNews();
    fetchNewsByCategory("local");
  }

  static Future<void> addNews(LatestNewsModel news) async {
    await FirebaseFirestore.instance.collection('LatestNews').add({
      'title': news.title,
      'content': news.content,
      'site': news.site,
      'url': news.url,
      'category': news.category,
      'time': FieldValue.serverTimestamp(),
    });
  }

  Future<void> fetchLatestNews() async {
    await FirebaseFirestore.instance
        .collection('LatestNews')
        .snapshots()
        .listen((snapshot) {
          news =
              snapshot.docs.map((doc) {
                return LatestNewsModel.fromMap(doc.data());
              }).toList();
          notifyListeners();
        });
  }

  Future<void> fetchNewsByCategory(String category) async {
    filteredNews = news.where((item) => item.category == category).toList();
    notifyListeners();
  }
}
