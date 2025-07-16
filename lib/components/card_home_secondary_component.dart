import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_application1/theme/app_colors.dart';
import 'package:news_application1/theme/app_text_style.dart';

class CardHomeSecondaryComponent extends StatelessWidget {
  const CardHomeSecondaryComponent({
    super.key,
    required this.title,
    required this.site,
    required this.url,
    required this.time,
  });
  final String title;
  final String site;
  final String url;
  final DateTime? time;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: 26),
      width: 172,
      height: 208,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 172,
            height: 137,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset("${url}", fit: BoxFit.cover),
                  ),
                ),
                Positioned.directional(
                  end: 0,
                  bottom: 0,
                  textDirection: Directionality.of(context),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      color: AppColors.primaryBGC,
                      borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(12),
                        bottomEnd: Radius.circular(12),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/svg/location.svg",
                          width: 16,
                          height: 16,
                          colorFilter: ColorFilter.mode(
                            AppColors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          "${site}",
                          style: AppTextStyle.custom(
                            fontSize: 10,
                            fontFamily: 'Arabic',
                            fontWeight: FontWeight.w400,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            "${title}",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.custom(
              fontFamily: 'Arabic',
              fontWeight: FontWeight.w500,
              color: AppColors.black,
            ),
          ),
          SizedBox(height: 6),
          Text(
            "منذ 4 ساعات",
            style: AppTextStyle.custom(
              fontSize: 10,
              fontFamily: 'Arabic',
              fontWeight: FontWeight.w600,
              color: AppColors.secondaryBlack,
            ),
          ),
        ],
      ),
    );
  }
}
