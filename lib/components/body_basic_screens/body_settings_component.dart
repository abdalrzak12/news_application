import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:news_application1/components/card_user_data.dart';
import 'package:news_application1/components/listTile_setting_component.dart';
import 'package:news_application1/dashboard/add_news_screen.dart';
import 'package:news_application1/dashboard/add_notice_screen.dart';
import 'package:news_application1/providers/switch_provider.dart';
import 'package:news_application1/screens/languages_screen.dart';
import 'package:news_application1/theme/app_colors.dart';
import 'package:news_application1/theme/app_text_style.dart';
import 'package:provider/provider.dart';

class BodySettingsComponent extends StatelessWidget {
  const BodySettingsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CardUserData(),
          SizedBox(height: 40),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Text(
              "settings".tr,
              style: AppTextStyle.custom(
                fontSize: 24,
                fontFamily: 'Arabic',
                fontWeight: FontWeight.w500,
                color: AppColors.primaryBGC,
              ),
            ),
          ),
          SizedBox(height: 20),
          ListTileSettingComponent(
            title: "theme_mode".tr,
            leading: SvgPicture.asset("assets/svg/languages.svg"),
            trailing: Consumer<SwitchProvider>(
              builder: (context, prov, child) {
                return Switch(
                  value: prov.SwitchedTheme,
                  onChanged: (value) {
                    prov.ChangeTheme(value);
                  },
                );
              },
            ),
          ),
          Divider(height: 2),
          ListTileSettingComponent(
            title: "choose_language".tr,
            leading: SvgPicture.asset("assets/svg/languages.svg"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LanguagesScreen()),
              );
            },
          ),

          Divider(height: 2),
          ListTileSettingComponent(
            title: "breaking_news".tr,
            leading: SvgPicture.asset("assets/svg/notification-bing.svg"),
            trailing: Consumer<SwitchProvider>(
              builder: (context, prov, child) {
                return Switch(
                  value: prov.SwitchedNotices,
                  onChanged: (value) {
                    prov.ChangeNotices(value);
                  },
                );
              },
            ),
          ),
          Divider(height: 2),
          ListTileSettingComponent(
            title: "contact_support".tr,
            leading: SvgPicture.asset("assets/svg/phone.svg"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          Divider(height: 2),
          ListTileSettingComponent(
            title: "permissions".tr,
            leading: SvgPicture.asset("assets/svg/command.svg"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddNoticeScreen()),
              );
            },
          ),
          Divider(height: 2),
          ListTileSettingComponent(
            title: "privacy_policy".tr,
            leading: SvgPicture.asset("assets/svg/security-safe.svg"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddNewsScreen()),
              );
            },
          ),
          Divider(height: 2),

          SizedBox(height: 40),
          Row(
            children: [
              Text(
                "app_version".tr,
                style: AppTextStyle.custom(
                  fontFamily: 'Arabic',
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryBGC,
                ),
              ),
              SizedBox(width: 4),
              Text(
                "V1.2.3",
                style: AppTextStyle.custom(
                  fontFamily: 'Arabic',
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryBGC,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
