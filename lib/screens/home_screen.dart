import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:news_application1/components/body_basic_screens/body_home_component.dart';
import 'package:news_application1/components/body_basic_screens/body_live_broadcast_component.dart';
import 'package:news_application1/components/body_basic_screens/body_saved_component.dart';
import 'package:news_application1/components/body_basic_screens/body_settings_component.dart';
import 'package:news_application1/theme/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24),
          child:
              _currentIndex == 0
                  ? BodyHomeComponent()
                  : _currentIndex == 1
                  ? BodyLiveBroadcastComponent()
                  : _currentIndex == 2
                  ? BodySavedComponent()
                  : _currentIndex == 3
                  ? BodySettingsComponent()
                  : Placeholder(),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: _currentIndex,
          height: 60,
          elevation: 8,
          indicatorColor: AppColors.white,
          shadowColor: Colors.black,
          backgroundColor: AppColors.white,
          onDestinationSelected:
              (index) => setState(() => _currentIndex = index),
          destinations: [
            NavigationDestination(
              icon:
                  _currentIndex == 0
                      ? SvgPicture.asset("assets/svg/home-on.svg")
                      : SvgPicture.asset("assets/svg/home-off.svg"),
              label: "home".tr,
            ),
            NavigationDestination(
              icon:
                  _currentIndex == 1
                      ? SvgPicture.asset("assets/svg/broadcast-on.svg")
                      : SvgPicture.asset("assets/svg/broadcast-off.svg"),
              label: "live".tr,
            ),
            NavigationDestination(
              icon:
                  _currentIndex == 2
                      ? SvgPicture.asset("assets/svg/archive-add-on.svg")
                      : SvgPicture.asset("assets/svg/archive-add-off.svg"),
              label: "saved".tr,
            ),
            NavigationDestination(
              icon:
                  _currentIndex == 3
                      ? SvgPicture.asset("assets/svg/setting-on.svg")
                      : SvgPicture.asset("assets/svg/setting-off.svg"),
              label: "settings".tr,
            ),
          ],
        ),
      ),
    );
  }
}
