import 'package:bmi_calculator/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';

import 'increment_decrement_button.dart';

class MediumSelectorContainer extends StatelessWidget {
  const MediumSelectorContainer({
    super.key,
    required this.forWhat,
    required this.value,
    required this.bmiController,
    required this.incrementMethod,
    required this.decrementMethod,
  });

  final String forWhat;
  final int value;
  final BMIController bmiController;
  final GestureTapCallback incrementMethod;
  final GestureTapCallback decrementMethod;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Text(
            forWhat,
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
          Text(
            value.toString(),
            style: const TextStyle(
              fontSize: 64,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 19,
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
