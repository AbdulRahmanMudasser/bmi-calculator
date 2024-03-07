import 'package:flutter/material.dart';

import 'increment_decrement_button.dart';

class MediumSelectorContainer extends StatelessWidget {
  const MediumSelectorContainer({
    super.key,
    required this.forWhat,
  });

  final String forWhat;

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
          const Text(
            "70",
            style: TextStyle(
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
                onTap: () {},
              ),
              IncrementDecrementButton(
                icon: Icons.add,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}