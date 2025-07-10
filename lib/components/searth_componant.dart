import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:news_application1/theme/app_colors.dart';

class SearthComponant extends StatelessWidget {
  const SearthComponant({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 12),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  "assets/svg/search-normal.svg",
                  colorFilter: ColorFilter.mode(
                    AppColors.black,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              hintText: "search".tr,
              border: OutlineInputBorder(
                borderRadius: BorderRadiusDirectional.horizontal(
                  start: Radius.circular(12),
                ).resolve(Directionality.of(context)),
              ),
            ),
          ),
        ),
        SizedBox(width: 4),
        InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(color: AppColors.primaryBGC),
              borderRadius: BorderRadiusDirectional.horizontal(
                end: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset("assets/svg/filter.svg"),
            ),
          ),
        ),
      ],
    );
  }
}
