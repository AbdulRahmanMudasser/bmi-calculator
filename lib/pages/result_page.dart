import 'package:bmi_calculator/components/calculate_button.dart';
import 'package:bmi_calculator/controllers/app_themes_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppThemesController appThemesController = Get.find();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // back button
              GestureDetector(
                onTap: () => Get.back(),
                child: SizedBox(
                  child: Text(
                    "Back",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              // text
              Text(
                "YOUR BMI IS",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.primary,
                  letterSpacing: 0.5,
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 320,
                    child: CircularPercentIndicator(
                      radius: 150,
                      animation: true,
                      animationDuration: 1200,
                      lineWidth: 35,
                      percent: 0.4,
                      center: Text(
                        "40",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 70,
                          color: Theme.of(context).colorScheme.primary,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                      progressColor: Theme.of(context).colorScheme.primary,
                      // footer: Text(
                      //   "Underweight",
                      //   style: TextStyle(
                      //     fontWeight: FontWeight.w600,
                      //     fontSize: 35,
                      //     color: Theme.of(context).colorScheme.primary,
                      //     fontFamily: 'Poppins',
                      //     letterSpacing: 0.5,
                      //   ),
                      // ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 25,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "UNDERWEIGHT",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.primary,
                      fontFamily: 'Poppins',
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 25,
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  "Your BMI stands at 27.6, indicating a healthy balance between weight and height. Stay on track with your wellness journey as you navigate through our personalized recommendations and resources. Let your BMI of 27.6 be your guide towards a healthier, happier you!",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                  softWrap: true,
                  // overflow: TextOverflow.ellipsis,
                ),
              ),

              const SizedBox(
                height: 35,
              ),

              CalculateButton(
                text: "Find Out More",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
