import 'package:bmi_calculator/controllers/app_themes_controller.dart';
import 'package:flutter/material.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({
    super.key,
    required this.appThemesController,
  });

  final AppThemesController appThemesController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          // height: 45,
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
                onPressed: () => appThemesController.changeTheme(),
                icon: Icon(
                  Icons.light_mode,
                  color: appThemesController.isDark.value
                      ? Theme.of(context).colorScheme.onPrimaryContainer
                      : Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              IconButton(
                onPressed: () => appThemesController.changeTheme(),
                icon: Icon(
                  Icons.dark_mode,
                  color: appThemesController.isDark.value
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
