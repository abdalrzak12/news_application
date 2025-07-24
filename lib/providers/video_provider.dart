import 'package:flutter/material.dart';
import 'package:news_application1/models/video_item.dart';

class VideoProvider extends ChangeNotifier {
  List<VideoItem> lst = [
    VideoItem(
      text: "fdgfgfgfgg",
      urlVideo: "assets/videos/v1.mp4",
      urlImage: "assets/images/ahmad.png",
    ),
    VideoItem(
      text: "يببيسبيب",
      urlVideo: "assets/videos/v1.mp4",
      urlImage: "assets/images/ahmad.png",
    ),
    VideoItem(
      text: "fdgfgfgfgg",
      urlVideo: "assets/videos/v1.mp4",
      urlImage: "assets/images/ahmad.png",
    ),
  ];
}
