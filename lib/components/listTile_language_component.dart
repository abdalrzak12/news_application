import 'package:flutter/material.dart';
import 'package:news_application1/theme/app_colors.dart';
import 'package:news_application1/theme/app_text_style.dart';

class ListTileLanguageComponente extends StatelessWidget {
  const ListTileLanguageComponente({
    super.key,
    required this.title,
    required this.leading,
    this.trailing,
    required this.onTap,
    required this.subtitle,
  });
  final String title;
  final String subtitle;
  final Widget leading;
  final Widget? trailing;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryBGC),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        onTap: onTap,
        contentPadding: EdgeInsetsDirectional.only(start: 9, end: 20),
        leading: leading,
        trailing: trailing,
        title: Text(
          "${title}",
          style: AppTextStyle.custom(
            fontSize: 16,
            fontFamily: 'Arabic',
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
        ),
        subtitle: Text(
          "${subtitle}",
          style: AppTextStyle.custom(
            fontSize: 12,
            fontFamily: 'Arabic',
            fontWeight: FontWeight.w400,
            color: AppColors.silver,
          ),
        ),
      ),
    );
  }
}
