import 'package:bmi_calculator/components/top_text_widget.dart';
import 'package:bmi_calculator/controllers/bmi_controller.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/calculate_button.dart';
import '../components/change_theme_widget.dart';
import '../components/height_selector_widget.dart';
import '../components/medium_selector_container.dart';
import '../components/select_gender_widget.dart';

class HomePage extends GetView<BMIController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // change theme widget
                ChangeTheme(),

                const SizedBox(height: 25),

                const TopTextWidget(),

                const SizedBox(height: 30),

                SelectGenderWidget(),

                const SizedBox(height: 30),

                Row(
                  children: [
                    Expanded(
                      child: HeightSelectorWidget(),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Obx(
                        () => Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MediumSelectorContainer(
                              forWhat: "Weight (kg)",
                              value: controller.weight.value,
                              incrementMethod: () => controller.incrementWeight(),
                              decrementMethod: () => controller.decrementWeight(),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            MediumSelectorContainer(
                              forWhat: "Age",
                              value: controller.age.value,
                              incrementMethod: () => controller.incrementAge(),
                              decrementMethod: () => controller.decrementAge(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                CalculateButton(
                  text: "Let's Go",
                  onTap: () {
                    controller.calculateBMI();
                    Get.to(() => const ResultPage());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
