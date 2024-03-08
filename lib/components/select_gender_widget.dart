import 'package:bmi_calculator/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';

import 'gender_button.dart';

class SelectGenderWidget extends StatelessWidget {
  const SelectGenderWidget({
    super.key,
    required this.bmiController,
    // required this.appThemesController,
  });

  final BMIController bmiController;
  // final AppThemesController appThemesController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GenderButton(
            genderIcon: Icons.male,
            genderText: "Male",
            onTap: () => bmiController.changeGender("Male"),
            bmiController: bmiController,
            // appThemesController: appThemesController,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: GenderButton(
            genderIcon: Icons.female,
            genderText: "Female",
            onTap: () => bmiController.changeGender("Female"),
            bmiController: bmiController,
            // appThemesController: appThemesController,
          ),
        ),
      ],
    );
  }
}