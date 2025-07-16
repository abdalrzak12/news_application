import 'package:flutter/material.dart';


class ButtonHomeProvider extends ChangeNotifier {
  int selectedIndex = 0;
  List<String> get titles => ['local', 'politics', 'economy', 'sports'];
  void select(int index) {
    if (selectedIndex != index) {
      selectedIndex = index;
      notifyListeners();
    }
  }
}
