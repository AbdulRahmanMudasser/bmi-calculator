import 'package:bmi_calculator/config/app_colors.dart';
import 'package:bmi_calculator/config/app_strings.dart';
import 'package:bmi_calculator/controllers/app_themes_controller.dart';
import 'package:bmi_calculator/utils/methods/snack_bar_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BMIController extends GetxController {
  RxString gender = ''.obs;

  RxInt weight = 50.obs;
  RxInt age = 10.obs;

  RxDouble height = 170.0.obs;

  RxDouble bmi = 0.0.obs;
  RxString personStatusString = 'UNDERWEIGHT'.obs;
  RxString bmiDescription = AppStrings.underweight.obs;

  Rx<Color> textColor = Colors.black.obs;

  // method to change gender
  void changeGender(String selectedGender) {
    gender.value = selectedGender;
  }

  // method to increment in weight
  void incrementWeight() {
    weight.value++;
  }

  // method to decrement in weight
  void decrementWeight() {
    if (weight.value > 0) {
      weight.value--;
    }
  }

  // method to increment in age
  void incrementAge() {
    age.value++;
  }

  // method to decrement in age
  void decrementAge() {
    if (age.value > 0) {
      age.value--;
    }
  }

  void calculateBMI() {
    // print for test
    debugPrint("Gender: ${gender.value.toString()}");
    debugPrint("Age: ${age.value.toString()}");
    debugPrint("Weight: ${weight.value.toString()}");
    debugPrint("Height: ${height.value.toString()}");

    // as we are getting value in cm
    // so convert it to meter
    double heightInMeter = height.value / 100;

    // formula to convert bmi value
    bmi.value = weight.value / (heightInMeter * heightInMeter);

    // fixing value to 1 after decimal point
    bmi.value = double.parse(bmi.value.toStringAsFixed(1));

    // calling the method to calculate person status
    // i.e. underweight, normal, etc.
    personStatus();

    // for printing
    debugPrint(personStatusString.value);
    debugPrint(bmi.value.toString());
  }

  // calculate the condition of person
  void personStatus() {
    if (bmi.value < 18.5) {
      personStatusString.value = "UNDERWEIGHT";
      bmiDescription.value = AppStrings.underweight;
    } else if (bmi.value >= 18.5 && bmi.value <= 24.9) {
      personStatusString.value = "NORMAL";
      bmiDescription.value = AppStrings.normal;
    } else if (bmi.value >= 25.0 && bmi.value <= 29.9) {
      personStatusString.value = "OVER WEIGHT";
      bmiDescription.value = AppStrings.overweight;
    } else if (bmi.value >= 30.0 && bmi.value <= 34.9) {
      personStatusString.value = "OBESE";
      bmiDescription.value = AppStrings.obese;
    } else if (bmi.value >= 35.0) {
      personStatusString.value = "EXTREMELY OBESE";
      bmiDescription.value = AppStrings.extremelyObese;
    }
  }

  /// Navigate to Website
  void openUrl() {
    final Uri uri = Uri.parse("https://www.calculator.net/bmi-calculator.html");
    try {} catch (exception) {
      debugPrint(exception.toString());
      SnackBarUtils.showErrorSnackBar(
        "Error",
        exception.toString(),
        backgroundColor: Get.find<AppThemesController>().isDark.value
            ? AppColors.lightBackgroundColor
            : AppColors.darkBackgroundColor,
        foregroundColor: Get.find<AppThemesController>().isDark.value
            ? AppColors.lightFontColor
            : AppColors.darkFontColor,
      );
    }
  }
}
