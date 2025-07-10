import 'package:flutter/material.dart';
import 'package:news_application1/theme/app_colors.dart';
import 'package:news_application1/theme/app_text_style.dart';

class ButtonHomeComponent extends StatelessWidget {
  const ButtonHomeComponent({
    super.key,
    required this.title,
    required this.specific,
    required this.onTap,
  });
  final String title;
  final bool specific;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 3),
        decoration: BoxDecoration(
          color: specific ? AppColors.primaryBGC : AppColors.white,

          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.primaryBGC),
        ),
        child: Center(
          child: Text(
            "${title}",
            style: AppTextStyle.custom(
              fontFamily: 'Arabic',
              fontWeight: FontWeight.w400,

              color: specific ? AppColors.white : AppColors.black,
            ),
          ),
        ),
      ),
    );
  }
}
