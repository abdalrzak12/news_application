import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_application1/theme/app_colors.dart';
import 'package:news_application1/theme/app_text_style.dart';

class CardFilter extends StatelessWidget {
  const CardFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {},
          contentPadding: EdgeInsetsDirectional.only(end: 24),
          leading: SvgPicture.asset("assets/svg/newspaper.svg"),
          title: Text(
            "أحمد الشرع يؤدي صلاة عيد الفطر",
            style: AppTextStyle.custom(
              fontSize: 12,
              fontFamily: 'Arabic',
              fontWeight: FontWeight.w500,
              color: AppColors.black,
            ),
          ),
          subtitle: Text(
            "بنتتمنيبتنبتينمبيمبيتمبنأحمد الشرع يؤدي صلاة عيد الفطر",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.custom(
              fontSize: 10,
              fontFamily: 'Arabic',
              fontWeight: FontWeight.w400,
              color: AppColors.secondaryBlack,
            ),
          ),
        ),
        Divider(height: 0),
      ],
    );
  }
}
