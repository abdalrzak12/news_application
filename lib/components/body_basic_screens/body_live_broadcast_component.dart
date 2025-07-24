import 'package:flutter/material.dart';
import 'package:news_application1/components/card_live_component.dart';
import 'package:news_application1/components/card_user_data.dart';
import 'package:news_application1/providers/video_provider.dart';
import 'package:news_application1/screens/broadcast_display_screen.dart';
import 'package:news_application1/theme/app_colors.dart';
import 'package:news_application1/theme/app_text_style.dart';
import 'package:provider/provider.dart';

class BodyLiveBroadcastComponent extends StatelessWidget {
  const BodyLiveBroadcastComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardUserData(),
        SizedBox(height: 26),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Text(
            "البث الحي",
            style: AppTextStyle.custom(
              fontSize: 24,
              fontFamily: 'Arabic',
              fontWeight: FontWeight.w500,
              color: AppColors.primaryBGC,
            ),
          ),
        ),
        SizedBox(height: 68),
        Expanded(
          child: Consumer<VideoProvider>(
            builder:
                (context, prov, child) => ListView.builder(
                  itemCount: prov.lst.length,
                  itemBuilder:
                      (context, index) => CardLiveComponent(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => BroadcastDisplayScreen(
                                    text: prov.lst[index].text,
                                    urlVideo: prov.lst[index].urlVideo,
                                  ),
                            ),
                          );
                        },
                        text: prov.lst[index].text,
                        urlImage: prov.lst[index].urlImage,
                      ),
                ),
          ),
        ),
      ],
    );
  }
}
