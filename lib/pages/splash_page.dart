import 'package:bmi_calculator/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/app icon.png",
              width: Get.width / 4,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "B M I    C A L C U L A T O R",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
