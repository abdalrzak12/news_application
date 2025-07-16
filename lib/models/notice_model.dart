import 'package:cloud_firestore/cloud_firestore.dart';

class NoticeModel {
  final String title;
  final String content;
  final bool type;

  NoticeModel({required this.title, required this.content, required this.type});

  factory NoticeModel.fromMap(Map<String, dynamic> map) {
    return NoticeModel(
      title: map['titleMain'] ?? '',
      content: map['NoticeContent'] ?? '',
      type: map['important'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
  return {
    'titleMain': title,
    'NoticeContent': content,
    'important': type,
  };
}
  static Stream<List<NoticeModel>> streamAll() {
    return FirebaseFirestore.instance
        .collection("Notifications")
        .snapshots()
        .map((event) {
          return event.docs.map((e) {
            return NoticeModel.fromMap(e.data() as Map<String, dynamic>);
          }).toList();
        });
  }
}
