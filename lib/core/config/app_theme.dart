import 'package:flutter/material.dart';
import 'package:mobile_template/core/config/app_colors.dart';
import 'package:mobile_template/core/config/components/theme/liquid_glass_theme.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightGreen100,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.accent,
      surface: AppColors.lightGreen200,
      background: AppColors.lightGreen100,
    ),
    extensions: [
      const LiquidGlassTheme(
        blur: 20,
        backgroundColor: AppColors.lightGreen400,
        borderColor: AppColors.lightGreen600,
      ),
    ],
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.darkGreen500,
    scaffoldBackgroundColor: AppColors.darkGreen1000,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.darkGreen500,
      secondary: AppColors.darkGreen300,
      surface: AppColors.darkGreen800,
      background: AppColors.darkGreen1000,
    ),
    extensions: [
      const LiquidGlassTheme(
        blur: 20,
        backgroundColor: AppColors.darkGreen900,
        borderColor: AppColors.darkGreen700,
      ),
    ],
  );
}
