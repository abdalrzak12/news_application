import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_application1/components/listTile_language_component.dart';
import 'package:news_application1/locale/locale_controller.dart';
import 'package:news_application1/theme/app_colors.dart';
import 'package:news_application1/theme/app_text_style.dart';

class LanguagesScreen extends StatefulWidget {
  LanguagesScreen({super.key});

  @override
  State<LanguagesScreen> createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  int selectedIndex = 0;
  MyLocaleController Controllerlocale = Get.find<MyLocaleController>();

  final List<Map<String, dynamic>> languages = [
    {
      'title': 'syria'.tr,
      'subtitle': 'arabic'.tr,
      'flag': 'assets/images/syria-flag.png',
      'code': 'ar',
    },
    {
      'title': 'america'.tr,
      'subtitle': 'english'.tr,
      'flag': 'assets/images/America-flag.png',
      'code': 'en',
    },
    {
      'title': 'syria'.tr,
      'subtitle': 'arabic'.tr,
      'flag': 'assets/images/syria-flag.png',
      'code': 'ar',
    },
    {
      'title': 'america'.tr,
      'subtitle': 'english'.tr,
      'flag': 'assets/images/America-flag.png',
      'code': 'en',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "choose_language".tr,
                    style: AppTextStyle.custom(
                      fontSize: 24,
                      fontFamily: 'Arabic',
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryBGC,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: AppColors.iconButtonColor,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/svg/arrow-left.svg",
                        colorFilter: ColorFilter.mode(
                          AppColors.primaryBGC,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Expanded(
                child: ListView.builder(
                  itemCount: languages.length,
                  itemBuilder: (context, index) {
                    final language = languages[index];
                    return ListTileLanguageComponente(
                      title: language['title'],
                      subtitle: language['subtitle'],
                      leading: Image.asset(language['flag']),
                      trailing:
                          selectedIndex == index
                              ? SvgPicture.asset("assets/svg/check-circle.svg")
                              : null,
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        final selectedLanguageCode =
                            languages[selectedIndex]['code'];
                        Controllerlocale.changeLang(selectedLanguageCode);
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryBGC,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        "confirm".tr,
                        style: AppTextStyle.custom(
                          fontSize: 16,
                          fontFamily: 'Arabic',
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                        ),
                      ),
                    ),
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
