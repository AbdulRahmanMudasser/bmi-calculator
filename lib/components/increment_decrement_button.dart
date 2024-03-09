import 'package:flutter/material.dart';

class IncrementDecrementButton extends StatelessWidget {
  const IncrementDecrementButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(11),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Icon(
          icon,
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
      ),
    );
  }
}