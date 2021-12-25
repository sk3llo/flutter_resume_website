import 'package:flutter/material.dart';
import 'package:flutter_resume_website/utils/app_colors.dart';

mixin AppTheme {
  static ThemeData get getThemeData => ThemeData(
        fontFamily: 'Montserrat',
        colorScheme: const ColorScheme.light(
          primary: AppColors.textPrimary,
          secondary: AppColors.textSecondary,
          background: AppColors.white,
          onPrimary: AppColors.white,
          onSecondary: AppColors.white,
          onBackground: AppColors.textPrimary,
        ),
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.light(
            primary: AppColors.textPrimary,
          ),
        ),
        textTheme: const TextTheme(
          // Main subtitle
          headline1: const TextStyle(
            fontSize: 55,
            color: AppColors.textPrimary,
            letterSpacing: 1.5,
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat',
          ),
          // Highlighted subtitle
          headline2: const TextStyle(
            fontSize: 55,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
            color: AppColors.textHightlight,
            fontFamily: 'Montserrat',
          ),
          bodyText1: const TextStyle(
            color: AppColors.textPrimary,
            fontSize: 30,
            letterSpacing: 3,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
          ),
          bodyText2: const TextStyle(
            fontSize: 28,
            color: AppColors.textPrimary,
            letterSpacing: 4,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat',
          ),
          subtitle1: const TextStyle(
            fontSize: 20,
            color: AppColors.textPrimary,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
          ),
          subtitle2: const TextStyle(
            fontSize: 18,
            color: AppColors.textSecondary,
            letterSpacing: 1,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat',
          ),
          // Button style
          button: const TextStyle(
            fontSize: 14,
            color: AppColors.textPrimary,
            fontFamily: 'Montserrat',
            letterSpacing: 1,
          ),
        ),
      );
}
