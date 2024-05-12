import 'package:bmi_calculator/controllers/app_themes_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'increment_decrement_button.dart';

class MediumSelectorContainer extends StatelessWidget {
  const MediumSelectorContainer({
    super.key,
    required this.forWhat,
    required this.value,
    required this.incrementMethod,
    required this.decrementMethod,
  });

  final String forWhat;
  final int value;
  final GestureTapCallback incrementMethod;
  final GestureTapCallback decrementMethod;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Text(
            forWhat,
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              color: Get.find<AppThemesController>().isDark.value
                  ? Theme.of(context).colorScheme.onPrimaryContainer
                  : Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            value.toString(),
            style: const TextStyle(
              fontSize: 60,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IncrementDecrementButton(
                icon: Icons.remove,
                onTap: decrementMethod,
              ),
              IncrementDecrementButton(
                icon: Icons.add,
                onTap: incrementMethod,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
