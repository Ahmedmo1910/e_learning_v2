import 'package:flutter/material.dart';
import 'package:e_learning_v2/core/theme/app_colors.dart';
import 'package:e_learning_v2/core/utils/app_fonts.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      tertiary: AppColors.third,
      surface: AppColors.surfaceLight,
      error: AppColors.error,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: AppColors.textPrimaryLight,
    ),
    textTheme: TextTheme(
      displayLarge: AppFonts.h1.copyWith(color: AppColors.textPrimaryLight),
      displayMedium: AppFonts.h2.copyWith(color: AppColors.textPrimaryLight),
      displaySmall: AppFonts.h3.copyWith(color: AppColors.textPrimaryLight),
      bodyLarge: AppFonts.bodyLarge.copyWith(color: AppColors.textPrimaryLight),
      bodyMedium: AppFonts.bodyMedium.copyWith(
        color: AppColors.textPrimaryLight,
      ),
      bodySmall: AppFonts.bodySmall.copyWith(
        color: AppColors.textSecondaryLight,
      ),
      labelLarge: AppFonts.labelLarge.copyWith(
        color: AppColors.textPrimaryLight,
      ),
      labelMedium: AppFonts.labelMedium.copyWith(
        color: AppColors.textSecondaryLight,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.surfaceLight,
      foregroundColor: AppColors.textPrimaryLight,
      elevation: 0,
      centerTitle: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        textStyle: AppFonts.labelLarge,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  );

  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      tertiary: AppColors.third,
      surface: AppColors.surfaceDark,
      error: AppColors.error,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: AppColors.textPrimaryDark,
    ),
    textTheme: TextTheme(
      displayLarge: AppFonts.h1.copyWith(color: AppColors.textPrimaryDark),
      displayMedium: AppFonts.h2.copyWith(color: AppColors.textPrimaryDark),
      displaySmall: AppFonts.h3.copyWith(color: AppColors.textPrimaryDark),
      bodyLarge: AppFonts.bodyLarge.copyWith(color: AppColors.textPrimaryDark),
      bodyMedium: AppFonts.bodyMedium.copyWith(
        color: AppColors.textPrimaryDark,
      ),
      bodySmall: AppFonts.bodySmall.copyWith(
        color: AppColors.textSecondaryDark,
      ),
      labelLarge: AppFonts.labelLarge.copyWith(
        color: AppColors.textPrimaryDark,
      ),
      labelMedium: AppFonts.labelMedium.copyWith(
        color: AppColors.textSecondaryDark,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.surfaceDark,
      foregroundColor: AppColors.textPrimaryDark,
      elevation: 0,
      centerTitle: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        textStyle: AppFonts.labelLarge,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  );
}
