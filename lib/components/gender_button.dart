import 'package:bmi_calculator/controllers/app_themes_controller.dart';
import 'package:bmi_calculator/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GenderButton extends StatelessWidget {
  const GenderButton({
    super.key,
    required this.genderIcon,
    required this.genderText,
    required this.onTap,
  });

  final IconData genderIcon;
  final String genderText;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Obx(
        () => Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          decoration: BoxDecoration(
            color: Get.find<BMIController>().gender.value == genderText
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                genderIcon,
                color: Get.find<BMIController>().gender.value == genderText
                    ? (Get.find<AppThemesController>().isDark.value
                        ? Theme.of(context).colorScheme.onPrimaryContainer
                        : Theme.of(context).colorScheme.primaryContainer)
                    : (Get.find<AppThemesController>().isDark.value
                        ? Theme.of(context).colorScheme.onPrimaryContainer
                        : Theme.of(context).colorScheme.primary),
                size: 20,
              ),
              Text(
                genderText,
                style: TextStyle(
                  color: Get.find<BMIController>().gender.value == genderText
                      ? (Get.find<AppThemesController>().isDark.value
                          ? Theme.of(context).colorScheme.onPrimaryContainer
                          : Theme.of(context).colorScheme.primaryContainer)
                      : (Get.find<AppThemesController>().isDark.value
                          ? Theme.of(context).colorScheme.onPrimaryContainer
                          : Theme.of(context).colorScheme.primary),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
