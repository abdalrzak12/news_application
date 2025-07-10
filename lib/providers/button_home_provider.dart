import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonHomeProvider extends ChangeNotifier {
  int selectedIndex = 0;
  List<String> get titles => [
    'local'.tr,
    'politics'.tr,
    'economy'.tr,
    'sports'.tr,
  ];
  void select(int index) {
    if (selectedIndex != index) {
      selectedIndex = index;
      notifyListeners();
    }
  }
}
