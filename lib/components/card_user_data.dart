import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:news_application1/screens/notices.dart';
import 'package:news_application1/theme/app_colors.dart';
import 'package:news_application1/theme/app_text_style.dart';

class CardUserData extends StatelessWidget {
  const CardUserData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ///الشريط العلوي في صورة البروفايل ولاسمو ول ترحيب
        Container(
          child: Row(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage("assets/images/profile.png"),
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "welcome".tr,
                    style: AppTextStyle.custom(
                      fontFamily: 'Arabic',
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondaryBlack,
                    ),
                  ),
                  Text(
                    "عبدالرزاق الصالح",
                    style: AppTextStyle.custom(
                      fontFamily: 'Arabic',
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Notices()),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: AppColors.silver,
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: CircleAvatar(
              backgroundColor: AppColors.white,
              child: SvgPicture.asset("assets/svg/notification-bing.svg"),
            ),
          ),
        ),
      ],
    );
  }
}
