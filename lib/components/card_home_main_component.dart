import 'package:flutter/material.dart';
import 'package:news_application1/theme/app_colors.dart';
import 'package:news_application1/theme/app_text_style.dart';

class CardHomeMainComponent extends StatelessWidget {
  const CardHomeMainComponent({
    super.key,
    required this.onTap,
    required this.title,
    required this.category,
    required this.urlImage,
    required this.time,
  });
  final VoidCallback onTap;
  final String title;
  final String category;
  final String urlImage;
  final DateTime? time;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            // margin: EdgeInsets.symmetric(horizontal: 8),
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
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.primaryBGC,
                      borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      "${category}",
                      style: AppTextStyle.custom(
                        fontFamily: 'Arabic',
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 24,
                  right: 14,
                  left: 40,
                  child: Text(
                    "${title}",
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
                    "${time}",
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
        SizedBox(height: 8),
        Container(
          width: 42,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 18,
                height: 7,
                decoration: BoxDecoration(
                  color: AppColors.primaryBGC,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                width: 7,
                height: 7,
                decoration: BoxDecoration(
                  color: AppColors.silver,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                width: 7,
                height: 7,
                decoration: BoxDecoration(
                  color: AppColors.silver,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
