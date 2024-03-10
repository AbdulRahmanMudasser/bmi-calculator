import 'package:bmi_calculator/config/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  // light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      background: AppColors.lightBackgroundColor,
      onBackground: AppColors.lightFontColor,
      primary: AppColors.lightPrimaryColor,
      primaryContainer: AppColors.lightDivColor,
      onPrimaryContainer: AppColors.lightFontColor,
      onSecondaryContainer: AppColors.lightLabelColor,
    ),
    scaffoldBackgroundColor: AppColors.lightBackgroundColor,
  );

  // dark theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.dark(
      background: AppColors.darkBackgroundColor,
      onBackground: AppColors.darkFontColor,
      primary: AppColors.darkPrimaryColor,
      primaryContainer: AppColors.darkDivColor,
      onPrimaryContainer: AppColors.darkFontColor,
      onSecondaryContainer: AppColors.darkLabelColor,
    ),
    scaffoldBackgroundColor: AppColors.darkBackgroundColor,
  );
}
