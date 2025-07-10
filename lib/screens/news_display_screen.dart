import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_application1/theme/app_colors.dart';
import 'package:news_application1/theme/app_text_style.dart';

class NewsDisplayScreen extends StatelessWidget {
  const NewsDisplayScreen({super.key, required this.category, required this.content, required this.title, required this.time, required this.urlImage, required this.site});
  final String category;
  final String content;
  final String title;
  final String time;
  final String urlImage;
  final String site;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: AppColors.white,
          backgroundColor: AppColors.white,
          toolbarHeight: 64,
          leadingWidth: double.infinity,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: AppColors.iconButtonColor,
                      ),
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/svg/archive-add.svg"),
                    ),
                    SizedBox(width: 12),
                    IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: AppColors.iconButtonColor,
                      ),
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/svg/share.svg"),
                    ),
                  ],
                ),
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.iconButtonColor,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: SvgPicture.asset("assets/svg/arrow-left.svg"),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 195,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
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
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 4,
                        ),
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
                  ],
                ),
              ),
              SizedBox(height: 12),
              Text(
                "${title}",
                style: AppTextStyle.custom(
                  fontSize: 18,
                  fontFamily: 'Arabic',
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryBGC,
                ),
              ),
              SizedBox(height: 12),
              Text(
                "${content}",
                style: AppTextStyle.custom(
                  fontSize: 16,
                  fontFamily: 'Arabic',
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryBGC,
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("assets/svg/location.svg"),
                      SizedBox(width: 4),
                      Text(
                        "${site}",
                        style: AppTextStyle.custom(
                          fontSize: 10,
                          fontFamily: 'Arabic',
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 24),
                  Row(
                    children: [
                      SvgPicture.asset("assets/svg/clock.svg"),
                      SizedBox(width: 4),
                      Text(
                        "${time}",
                        style: AppTextStyle.custom(
                          fontSize: 10,
                          fontFamily: 'Arabic',
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
