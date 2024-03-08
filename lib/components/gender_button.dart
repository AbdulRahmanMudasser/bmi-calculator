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
    required this.bmiController,
    // required this.appThemesController,
  });

  final IconData genderIcon;
  final String genderText;
  final GestureTapCallback onTap;
  final BMIController bmiController;

  // final AppThemesController appThemesController;

  @override
  Widget build(BuildContext context) {
    AppThemesController appThemesController = Get.find();

    return GestureDetector(
      onTap: onTap,
      child: Obx(
        () => Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          decoration: BoxDecoration(
            color: bmiController.gender.value == genderText
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                genderIcon,
                color: bmiController.gender.value == genderText
                    ? Theme.of(context).colorScheme.primaryContainer
                    : Theme.of(context).colorScheme.primary,
              ),
              Text(
                genderText,
                style: TextStyle(
                  color: bmiController.gender.value == genderText
                      ? Theme.of(context).colorScheme.primaryContainer
                      : Theme.of(context).colorScheme.primary,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
