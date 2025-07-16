import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_application1/models/saved_news_model.dart';

class TapBarProvider extends ChangeNotifier {
  List<SavedNewsModel> listLocal = [];
  List<SavedNewsModel> listpolitics = [];
  List<SavedNewsModel> listeconomy = [];
  List<SavedNewsModel> listsports = [];
  bool isactev = false;
  bool toggleSaved(
    String title,
    String content,
    String urlImage,
    String category,
    String site,
    DateTime? time,
  ) {
    final model = SavedNewsModel(
      title: title,
      content: content,
      urlImage: urlImage,
      category: category,
      site: site,
      time: time,
    );

    List<SavedNewsModel> targetList;
    if (category == "local".tr) {
      targetList = listLocal;
    } else if (category == "politics".tr) {
      targetList = listpolitics;
    } else if (category == "economy".tr) {
      targetList = listeconomy;
    } else {
      targetList = listsports;
    }

    final existingIndex = targetList.indexWhere((item) => item.title == title);

    if (existingIndex != -1) {
      targetList.removeAt(existingIndex);
      notifyListeners();
      return false;
    } else {
      targetList.add(model);
      notifyListeners();
      return true;
    }
  }
}
