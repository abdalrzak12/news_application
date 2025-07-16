import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:news_application1/firebase_options.dart';
import 'package:news_application1/locale/locale.dart';
import 'package:news_application1/locale/locale_controller.dart';
import 'package:news_application1/providers/button_home_provider.dart';
import 'package:news_application1/providers/latest_news_provider.dart';
import 'package:news_application1/providers/notice_provider.dart';
import 'package:news_application1/providers/switch_provider.dart';
import 'package:news_application1/providers/tap_bar_provider.dart';
import 'package:news_application1/screens/splash.dart';
import 'package:news_application1/theme/app_colors.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Get.put(MyLocaleController());
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MyLocaleController localeController = Get.find<MyLocaleController>();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ButtonHomeProvider()),
        ChangeNotifierProvider(create: (context) => NoticeProvider()),
        ChangeNotifierProvider(create: (context) => SwitchProvider()),
        ChangeNotifierProvider(create: (context) => LatestNewsProvider()),
        ChangeNotifierProvider(create: (context) => TapBarProvider()),
      ],
      child: GetMaterialApp(
        title: 'news Application',
        theme: ThemeData(
          fontFamily: "Arabic",
          scaffoldBackgroundColor: AppColors.backgroundColor,
        ),
        debugShowCheckedModeBanner: false,
        locale: localeController.initialLang,
        translations: MyLocale(),
        fallbackLocale: Locale("ar"),
        home: Splash(),
      ),
    );
  }
}
