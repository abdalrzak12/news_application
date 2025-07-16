import 'package:cloud_firestore/cloud_firestore.dart';

class LatestNewsModel {
  LatestNewsModel({
    required this.title,
    required this.content,
    required this.category,
    required this.site,
    required this.url,
    this.time,
  });
  final String title;
  final String content;
  final String category;
  final String site;
  final String url;
  final DateTime? time;

  factory LatestNewsModel.fromMap(Map<String, dynamic> map) {
    return LatestNewsModel(
      title: map['title'] ?? '',
      content: map['content'] ?? '',
      category: map['category'] ?? '',
      site: map['site'] ?? '',
      time: map['time'] != null ? (map['time'] as Timestamp).toDate() : null,
      url: map['url'] ?? 'assets/images/ahmad.png',
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'content': content,
      'site': site,
      'url': url,
      'category': category,
      'time': time,
    };
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
