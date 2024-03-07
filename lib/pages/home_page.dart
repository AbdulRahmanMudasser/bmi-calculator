import 'package:bmi_calculator/components/top_text_widget.dart';
import 'package:bmi_calculator/controllers/app_themes_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../components/calculate_button.dart';
import '../components/change_theme_widget.dart';
import '../components/gender_button.dart';
import '../components/medium_selector_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // since our controller is in another file, we will use the concept of dependency injection
    AppThemesController appThemesController = Get.put(AppThemesController());

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
              const ChangeTheme(),

              const SizedBox(
                height: 25,
              ),

              const TopTextWidget(),

              const SizedBox(
                height: 35,
              ),

              Row(
                children: [
                  Expanded(
                    child: GenderButton(
                      genderIcon: Icons.male,
                      genderText: "Male",
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GenderButton(
                      genderIcon: Icons.female,
                      genderText: "Female",
                      isSelected: false,
                      onTap: () {},
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 40,
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 500,
                      // width: 150,
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Height (cm)",
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.onSecondaryContainer,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Expanded(
                            child: SfSlider.vertical(
                              min: 0,
                              max: 300,
                              value: 20,
                              interval: 50,
                              showTicks: false,
                              showLabels: true,
                              enableTooltip: false,
                              onChanged: (value) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MediumSelectorContainer(
                          forWhat: "Weight",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MediumSelectorContainer(
                          forWhat: "Age",
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 45,
              ),

              CalculateButton(
                text: "Let's Go",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
