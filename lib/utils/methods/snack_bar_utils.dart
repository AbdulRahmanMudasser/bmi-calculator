import 'package:bmi_calculator/utils/extensions/size_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarUtils {
  // success snack bar
  static void showSuccessSnackBar(
    String title,
    String message, {
    Color? backgroundColor,
    Color? foregroundColor,
  }) {
    Get.snackbar(
      title,
      message,
      backgroundColor: backgroundColor ?? Theme.of(Get.context!).colorScheme.background,
      snackPosition: SnackPosition.BOTTOM,
      colorText: foregroundColor ?? Theme.of(Get.context!).colorScheme.onPrimaryContainer,
      duration: const Duration(seconds: 5),
      margin: EdgeInsets.only(bottom: 5.0.hp, left: 1.5.wp, right: 1.5.wp),
    );
  }

  // error snack bar
  static void showErrorSnackBar(
    String title,
    String message, {
    Color? backgroundColor,
    Color? foregroundColor,
  }) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      colorText: foregroundColor ?? Theme.of(Get.context!).colorScheme.onPrimaryContainer,
      backgroundColor: backgroundColor ?? Theme.of(Get.context!).colorScheme.background,
      duration: const Duration(seconds: 3),
      margin: EdgeInsets.only(bottom: 5.0.hp, left: 1.5.wp, right: 1.5.wp),
    );
  }
}
