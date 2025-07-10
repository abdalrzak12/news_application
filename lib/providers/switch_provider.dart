import 'package:flutter/material.dart';

class SwitchProvider extends ChangeNotifier {
  bool SwitchedNotices = false;
  bool SwitchedTheme = false;
  void ChangeNotices(bool isSwitched) {
    SwitchedNotices = isSwitched;
    notifyListeners();
  }

  void ChangeTheme(bool isSwitched) {
    SwitchedTheme = isSwitched;
    notifyListeners();
  }
}
