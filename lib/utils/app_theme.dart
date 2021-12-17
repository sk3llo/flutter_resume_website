import 'package:flutter/material.dart';
import 'package:flutter_resume_website/utils/app_colors.dart';

mixin AppTheme {
  static ThemeData get getThemeData => ThemeData(
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
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
          // Button text style
          bodyText1: const TextStyle(
            fontSize: 14,
            color: AppColors.textPrimary,
            fontFamily: 'Montserrat',
          ),
          // Menu bar text style
          bodyText2: const TextStyle(
            color: AppColors.textPrimary,
            fontSize: 30,
            letterSpacing: 3,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
          ),
          // Big subtitle style
          subtitle1: const TextStyle(
            fontSize: 20,
            color: AppColors.textPrimary,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
          ),
          // Small subtitle style
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
