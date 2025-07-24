import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_application1/components/card_video_component.dart';
import 'package:news_application1/theme/app_colors.dart';
import 'package:news_application1/theme/app_text_style.dart';

class BroadcastDisplayScreen extends StatelessWidget {
  const BroadcastDisplayScreen({super.key, required this.text, required this.urlVideo});
  final String text;
  final String urlVideo;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "البث الحي",
                    style: AppTextStyle.custom(
                      fontSize: 24,
                      fontFamily: "Arabic",
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryBGC,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          style: IconButton.styleFrom(
                            backgroundColor: AppColors.iconButtonColor,
                          ),
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/svg/share.svg"),
                        ),
                        SizedBox(width: 12),
                        IconButton(
                          style: IconButton.styleFrom(
                            backgroundColor: AppColors.iconButtonColor,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_forward,
                            color: AppColors.primaryBGC,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CardVideoComponent(text: text, urlVideo: urlVideo),
          ],
        ),
      ),
    );
  }
}
