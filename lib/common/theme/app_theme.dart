import 'package:flutter/material.dart';
import 'package:roadwise/common/theme/text_style.dart';

import '../constants/app_colors.dart';

abstract class AppTheme {
  AppTheme._();

  static ThemeData appTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.primaryColor,
    textTheme: _textTheme,
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: AppTextStyle.subtitle1.copyWith(
        color: AppColors.secondaryColor,
        letterSpacing: 0.5,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 56),
        foregroundColor: AppColors.secondaryColor,
        backgroundColor: AppColors.primaryFontColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        textStyle: AppTextStyle.button,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryGreenColor,
        textStyle: AppTextStyle.button.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          minimumSize: const Size(double.infinity, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          foregroundColor: AppColors.primaryGreenColor,
          side: const BorderSide(
            color: AppColors.primaryFontColor,
          )),
    ),
  );

  static TextTheme get _textTheme => TextTheme(
        displayLarge: AppTextStyle.headline1,
        displayMedium: AppTextStyle.headline2,
        displaySmall: AppTextStyle.headline3,
        headlineMedium: AppTextStyle.headline4,
        headlineSmall: AppTextStyle.headline5,
        titleLarge: AppTextStyle.headline6,
        titleMedium: AppTextStyle.subtitle1,
        titleSmall: AppTextStyle.subtitle2,
        bodySmall: AppTextStyle.caption,
        bodyLarge: AppTextStyle.bodyText1,
        bodyMedium: AppTextStyle.bodyText2,
        labelLarge: AppTextStyle.button,
        labelSmall: AppTextStyle.labelSmall,
      );
}
