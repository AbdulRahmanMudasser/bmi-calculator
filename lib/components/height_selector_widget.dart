import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../controllers/bmi_controller.dart';

class HeightSelectorWidget extends StatelessWidget {
  const HeightSelectorWidget({
    super.key,
    required this.bmiController,
    // required this.height,
  });

  final BMIController bmiController;

  // final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
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
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Obx(
              () => SfSlider.vertical(
                min: 100,
                max: 250,
                value: bmiController.height.value,
                interval: 25,
                showTicks: true,
                showLabels: true,
                enableTooltip: true,
                activeColor: Theme.of(context).colorScheme.primary,
                inactiveColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                onChanged: (value) {
                  bmiController.height.value = value;

                  // debugPrint(value.toString());
                },
                // tooltipPosition: SliderTooltipPosition.left,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
