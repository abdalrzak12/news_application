
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:news_application1/models/notice_model.dart';

class NoticeProvider with ChangeNotifier {
  List<NoticeModel> notifications = [];

  NoticeProvider() {
    fetchNotifications();
  }

  void fetchNotifications() {
    FirebaseFirestore.instance
        .collection('Notifications')
        .snapshots()
        .listen((snapshot) {
      notifications = snapshot.docs.map((doc) {
        return NoticeModel.fromMap(doc.data());
      }).toList();
      notifyListeners();
    });
  }
}
