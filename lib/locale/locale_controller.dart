import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MyLocaleController extends GetxController {
  final _getStorage = GetStorage();
  Locale get initialLang {
    String? langCode = _getStorage.read("lang");
    if (langCode == null) {
      final deviceLang = Get.deviceLocale?.languageCode ?? "en";
      _getStorage.write("lang", deviceLang);
      return Locale(deviceLang);
    }
    return Locale(langCode);
  }

  void changeLang(String codelang) {
    _getStorage.write("lang", codelang);
    Locale locale = Locale(codelang);
    Get.updateLocale(locale);
  }
}
