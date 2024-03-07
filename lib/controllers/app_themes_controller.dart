import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppThemesController extends GetxController {
  RxBool isDark = false.obs;

  void changeTheme() async {
    isDark.value = !isDark.value;

    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);

    if (isDark.value) {
      debugPrint("Switching to Dark Theme");
    } else {
      debugPrint("Switching to Light Theme");
    }
  }
}
