import 'package:flutter/material.dart';
import 'package:news_application1/theme/app_colors.dart';
import 'package:news_application1/theme/app_text_style.dart';

class CardLiveComponent extends StatelessWidget {
  const CardLiveComponent({
    super.key,
    required this.text,
    required this.urlImage,
    required this.onTap,
  });
  final String text;
  final String urlImage;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            height: 195,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(urlImage, fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  child: Container(
                    width: 100,
                    padding: EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(12),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 13),
                        Icon(
                          Icons.signal_wifi_0_bar_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(width: 6),
                        Text(
                          "مباشر",
                          style: AppTextStyle.custom(
                            fontFamily: 'Arabic',
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 24,
                  right: 14,
                  left: 40,
                  child: Text(
                    "rr",
                    style: AppTextStyle.custom(
                      fontSize: 16,
                      fontFamily: "Arabic",
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Positioned.directional(
                  textDirection: Directionality.of(context),
                  bottom: 8,
                  end: 12,
                  child: Text(
                    "rr",
                    style: AppTextStyle.custom(
                      fontSize: 12,
                      fontFamily: "Arabic",
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          "${text}",
          style: AppTextStyle.custom(
            fontSize: 18,
            fontFamily: "Arabic",
            fontWeight: FontWeight.w600,
            color: AppColors.primaryBGC,
          ),
        ),
        SizedBox(height: 24),
      ],
    );
  }
}
