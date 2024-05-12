import 'package:get/get.dart';

class SplashController extends GetxController {

  Future<void> _navigateToMainPage() async {
    await Future.delayed(Duration(seconds: 3));

    Get.offAllNamed('/home');
  }

  @override
  void onInit() {
    super.onInit();

    _navigateToMainPage();
  }
}
