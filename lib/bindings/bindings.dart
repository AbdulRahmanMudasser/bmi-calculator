import 'package:bmi_calculator/controllers/app_themes_controller.dart';
import 'package:bmi_calculator/controllers/bmi_controller.dart';
import 'package:bmi_calculator/controllers/splash_controller.dart';
import 'package:get/get.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
    Get.put(AppThemesController());
    Get.lazyPut(() => BMIController());
  }
}