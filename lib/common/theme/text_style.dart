import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

abstract class AppTextStyle {
  static const TextStyle _baseTextStyle = TextStyle(
    // fontFamily: 'Gilroy',
    color: AppColors.primaryFontColor,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get headline1 {
    return _baseTextStyle.copyWith(
      fontSize: 32,
      fontWeight: AppFontWeight.urbanistSemiBold,
    );
  }

  static TextStyle get headline2 {
    return _baseTextStyle.copyWith(
      fontSize: 28,
      fontWeight: AppFontWeight.urbanistMedium,
    );
  }

  static TextStyle get headline3 {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      height: 30 / 22,
      fontWeight: AppFontWeight.urbanistSemiBold,
    );
  }

  static TextStyle get headline4 {
    return _baseTextStyle.copyWith(
      fontSize: 20,
      fontWeight: AppFontWeight.urbanistSemiBold,
      // color: Colors.black,
    );
  }

  static TextStyle get headline5 {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      fontWeight: AppFontWeight.urbanistMedium,
      // color: Colors.black,
    );
  }

  static TextStyle get headline6 {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      fontWeight: AppFontWeight.urbanistSemiBold,
      // color: Colors.white,
    );
  }

  static TextStyle get subtitle1 {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: AppFontWeight.urbanistMedium,
      wordSpacing: -1,
    );
  }

  static TextStyle get subtitle2 {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: AppFontWeight.urbanistSemiBold,
      // color: Colors.white,
    );
  }

  static TextStyle get caption {
    return _baseTextStyle.copyWith(
      fontSize: 12,
      // color: AppColors.black,
      fontWeight: AppFontWeight.urbanistMedium,
    );
  }

  static TextStyle get labelSmall {
    return _baseTextStyle.copyWith(
      fontSize: 10,
      // color: AppColors.black,
      fontWeight: AppFontWeight.urbanistSemiBold,
    );
  }

  static TextStyle get bodyText1 {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: AppFontWeight.urbanistRegular,
      // color: Colors.white,
    );
  }

  static TextStyle get bodyText2 {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: AppFontWeight.urbanistMedium,
      // color: Colors.white,
    );
  }

  static TextStyle get button {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: AppColors.secondaryColor,
    );
  }
}

abstract class AppFontWeight {
  static const FontWeight urbanistRegular = FontWeight.w400;
  static const FontWeight urbanistMedium = FontWeight.w500;
  static const FontWeight urbanistSemiBold = FontWeight.w600;
  static const FontWeight urbanistBold = FontWeight.w700;
}

extension TextStyleExtension on TextStyle {
  TextStyle withOpacity(double opacity) {
    return copyWith(color: color!.withOpacity(opacity));
  }

  TextStyle withColor(Color newColor) {
    return copyWith(color: newColor);
  }
}

extension DarkTextThemeExtension on TextStyle {
  TextStyle convertToDark([Color? darkThemeColor]) {
    return copyWith(
      color: darkThemeColor ?? Colors.white,
    );
  }
}

extension FontFamily on TextStyle {
  TextStyle get urbanist {
    return copyWith(fontFamily: 'Gilroy');
  }
}

extension FontWeightExtension on TextStyle {
  TextStyle get bold {
    return copyWith(fontWeight: AppFontWeight.urbanistBold);
  }

  TextStyle get regular {
    return copyWith(fontWeight: AppFontWeight.urbanistRegular);
  }

  TextStyle get semiBold {
    return copyWith(fontWeight: AppFontWeight.urbanistSemiBold);
  }

  TextStyle get medium {
    return copyWith(fontWeight: AppFontWeight.urbanistMedium);
  }
}

extension FixedColorExtension on TextStyle {
  TextStyle get black {
    return withColor(Colors.black);
  }

  TextStyle get white {
    return withColor(Colors.white);
  }
}

extension FontSizeExtension on TextStyle {
  TextStyle get size16 {
    return copyWith(fontSize: 16);
  }

  TextStyle get size12 {
    return copyWith(fontSize: 12);
  }

  TextStyle get size13 {
    return copyWith(fontSize: 13);
  }

  TextStyle get size14 {
    return copyWith(fontSize: 14);
  }

  TextStyle get size18 {
    return copyWith(fontSize: 18);
  }

  TextStyle get size20 {
    return copyWith(fontSize: 20);
  }

  TextStyle get size22 {
    return copyWith(fontSize: 22);
  }

  // TextStyle responsiveFont(BuildContext context) {
  //   return copyWith(fontSize: fontSize?.toResponsiveHeight(context));
  // }
}
