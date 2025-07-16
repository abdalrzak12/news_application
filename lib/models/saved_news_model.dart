class SavedNewsModel {
  SavedNewsModel({
    required this.title,
    required this.content,
    required this.urlImage,
    required this.category,
    required this.site,
    this.time,
  });

  final String title;
  final String content;
  final String category;
  final String urlImage;
  final String site;
  final DateTime? time;
}
