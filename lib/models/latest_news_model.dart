import 'package:cloud_firestore/cloud_firestore.dart';

class LatestNewsModel {
  LatestNewsModel({
    required this.title,
    required this.content,
    required this.category,
    required this.site,
    required this.url,
    required this.time,
  });
  final String title;
  final String content;
  final String category;
  final String site;
  final String url;
  final String time;

  factory LatestNewsModel.fromMap(Map<String, dynamic> map) {
    return LatestNewsModel(
      title: map['title'] ?? '',
      content: map['content'] ?? '',
      category: map['category'] ?? '',
      site: map['site'] ?? '',
      time: map['time'] ?? '',
      url: map['url'] ?? '',
    );
  }
  static Stream<List<LatestNewsModel>> streamAll() {
    return FirebaseFirestore.instance.collection("LatestNews").snapshots().map((
      event,
    ) {
      return event.docs.map((e) {
        return LatestNewsModel.fromMap(e.data() as Map<String, dynamic>);
      }).toList();
    });
  }
}
