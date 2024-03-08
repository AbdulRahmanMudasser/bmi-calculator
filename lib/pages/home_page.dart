import 'package:bmi_calculator/components/top_text_widget.dart';
import 'package:bmi_calculator/controllers/app_themes_controller.dart';
import 'package:bmi_calculator/controllers/bmi_controller.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/calculate_button.dart';
import '../components/change_theme_widget.dart';
import '../components/height_selector_widget.dart';
import '../components/medium_selector_container.dart';
import '../components/select_gender_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // since our controller is in another file, we will use the concept of dependency injection
    AppThemesController appThemesController = Get.put(AppThemesController());
    BMIController bmiController = Get.put(BMIController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // to change theme
              // ElevatedButton(
              //   onPressed: () {
              //     appThemesController.changeTheme();
              //   },
              //   child: const Text("Change Theme"),
              // ),

              // change theme widget
              ChangeTheme(
                appThemesController: appThemesController,
              ),

              const SizedBox(
                height: 25,
              ),

              const TopTextWidget(),

              const SizedBox(
                height: 35,
              ),

              SelectGenderWidget(
                bmiController: bmiController,
                // appThemesController: appThemesController,
              ),

              const SizedBox(
                height: 40,
              ),

              Row(
                children: [
                  Expanded(
                    child: HeightSelectorWidget(
                      bmiController: bmiController,
                      // height: bmiController.height.value,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Obx(
                      () => Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MediumSelectorContainer(
                            forWhat: "Weight (kg)",
                            value: bmiController.weight.value,
                            bmiController: bmiController,
                            incrementMethod: () => bmiController.incrementWeight(),
                            decrementMethod: () => bmiController.decrementWeight(),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          MediumSelectorContainer(
                            forWhat: "Age",
                            value: bmiController.age.value,
                            bmiController: bmiController,
                            incrementMethod: () => bmiController.incrementAge(),
                            decrementMethod: () => bmiController.decrementAge(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 45,
              ),

              CalculateButton(
                text: "Let's Go",
                onTap: () {
                  Get.to(const ResultPage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
