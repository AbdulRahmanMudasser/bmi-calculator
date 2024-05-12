import 'package:bmi_calculator/controllers/app_themes_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeTheme extends GetView<AppThemesController> {
  const ChangeTheme({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            children: [
              // const SizedBox(
              //   width: 10,
              // ),
              IconButton(
                onPressed: () => controller.changeTheme(),
                icon: Icon(
                  Icons.light_mode,
                  color: controller.isDark.value
                      ? Theme.of(context).colorScheme.onPrimaryContainer
                      : Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              IconButton(
                onPressed: () => controller.changeTheme(),
                icon: Icon(
                  Icons.dark_mode,
                  color: controller.isDark.value
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              // const SizedBox(
              //   width: 10,
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
