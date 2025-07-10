import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:news_application1/models/latest_news_model.dart';

class LatestNewsProvider extends ChangeNotifier{
   List<LatestNewsModel> news = [];

LatestNewsProvider(){
   fetchNotifications();
}

  void fetchNotifications() {
    FirebaseFirestore.instance
        .collection('LatestNews')
        .snapshots()
        .listen((snapshot) {
      news = snapshot.docs.map((doc) {
        return LatestNewsModel.fromMap(doc.data());
      }).toList();
      notifyListeners();
    });
  }
}