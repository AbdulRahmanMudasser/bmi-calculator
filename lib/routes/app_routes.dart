import 'package:bmi_calculator/pages/home_page.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:bmi_calculator/pages/splash_page.dart';
import 'package:bmi_calculator/routes/routes_name.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: RoutesName.INITIAL, page: () => SplashPage()),
    GetPage(name: RoutesName.HOME, page: () => HomePage()),
    GetPage(name: RoutesName.RESULT, page: () => ResultPage()),
  ];
}
