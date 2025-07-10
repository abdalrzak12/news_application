import 'package:flutter/material.dart';
import 'package:news_application1/theme/app_colors.dart';
import 'package:news_application1/theme/app_text_style.dart';

class ListTileSettingComponent extends StatelessWidget {
  const ListTileSettingComponent({
    super.key,
    required this.title,
    required this.leading,
    required this.trailing,
    this.onTap,
  });
  final String title;
  final Widget leading;
  final Widget trailing;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.all(0),
      leading: leading,
      trailing: trailing,
      title: Text(
        "${title}",
        style: AppTextStyle.custom(
          fontFamily: 'Arabic',
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
      ),
    );
  }
}
