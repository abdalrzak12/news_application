import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:news_application1/models/notice_model.dart';

class NoticeProvider with ChangeNotifier {
  List<NoticeModel> notifications = [];

  NoticeProvider() {
    fetchNotifications();
  }

  static Future<void> addNotice(NoticeModel notice) async {
    await FirebaseFirestore.instance.collection('Notifications').add({
      'titleMain': notice.title,
      'NoticeContent': notice.content,
      'important': notice.type,
      // 'time': FieldValue.serverTimestamp(),
    });
  }

  void fetchNotifications() {
    FirebaseFirestore.instance.collection('Notifications').snapshots().listen((
      snapshot,
    ) {
      notifications =
          snapshot.docs.map((doc) {
            return NoticeModel.fromMap(doc.data());
          }).toList();
      notifyListeners();
    });
  }
}
