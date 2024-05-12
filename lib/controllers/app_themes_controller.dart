import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AppThemesController extends GetxController {
  RxBool isDark = false.obs;

  void changeTheme() async {
    isDark.value = !isDark.value;

    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);

    changeStatusBarColor();

    if (isDark.value) {
      debugPrint("Switching to Dark Theme");
    } else {
      debugPrint("Switching to Light Theme");
    }
  }

  /// Method To Change Status Bar Color
  void changeStatusBarColor() {
    if (isDark.value) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
        ),
      );

      update();
    } else {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
      );
    }
  }
}
