import 'package:bmi_calculator/config/app_colors.dart';
import 'package:bmi_calculator/controllers/app_themes_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IncrementDecrementButton extends StatelessWidget {
  const IncrementDecrementButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    AppThemesController appThemesController = Get.find();

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(11),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Icon(
          icon,
          color: AppColors.lightDivColor,
        ),
      ),
    );
  }
}
