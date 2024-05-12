import 'package:bmi_calculator/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'gender_button.dart';

class SelectGenderWidget extends StatelessWidget {
  const SelectGenderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GenderButton(
            genderIcon: Icons.male,
            genderText: "Male",
            onTap: () => Get.find<BMIController>().changeGender("Male"),
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
            onTap: () => Get.find<BMIController>().changeGender("Female"),
            // appThemesController: appThemesController,
          ),
        ),
      ],
    );
  }
}