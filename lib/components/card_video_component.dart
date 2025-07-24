import 'package:flutter/material.dart';
import 'package:news_application1/components/video_player_component.dart';
import 'package:news_application1/theme/app_colors.dart';
import 'package:news_application1/theme/app_text_style.dart';

class CardVideoComponent extends StatelessWidget {
  const CardVideoComponent({super.key, required this.text, required this.urlVideo});
  final String text;
  final String urlVideo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          width: double.infinity,
          height: 223,
          child: VideoPlayerComponent(videoAssetPath: "${urlVideo}"),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Text(
            "${text}",
            style: AppTextStyle.custom(
              fontSize: 18,
              fontFamily: "Arabic",
              fontWeight: FontWeight.w600,
              color: AppColors.primaryBGC,
            ),
          ),
        ),
      ],
    );
  }
}
