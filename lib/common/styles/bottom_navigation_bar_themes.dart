import 'package:flutter/material.dart';

import 'package:clean_architecture_template/common/styles/app_colors.dart';
import 'package:clean_architecture_template/common/styles/text_themes.dart';

class BottomNavigationBarThemes {
  const BottomNavigationBarThemes._();

  static BottomNavigationBarThemeData scaled(double scale) {
    return BottomNavigationBarThemeData(
      backgroundColor: CustomAppColors.white,
      selectedItemColor: CustomAppColors.primary,
      unselectedItemColor: CustomAppColors.gray3,
      selectedLabelStyle: TextThemes.scaleCustom(
        TextThemes.defaultStyle.labelSmall!,
        scale,
      ).copyWith(color: CustomAppColors.primary, fontWeight: FontWeight.w600),
      unselectedLabelStyle: TextThemes.scaleCustom(
        TextThemes.defaultStyle.labelSmall!,
        scale,
      ).copyWith(color: CustomAppColors.gray3),
      type: BottomNavigationBarType.fixed,
      elevation: 0,
    );
  }

  static BottomNavigationBarThemeData darkScaled(double scale) {
    return BottomNavigationBarThemeData(
      backgroundColor: CustomAppColors.darkCards,
      selectedItemColor: CustomAppColors.tertiaryLight,
      unselectedItemColor: CustomAppColors.gray4,
      selectedLabelStyle: TextThemes.scaleCustom(
        TextThemes.darkStyle.labelSmall!,
        scale,
      ).copyWith(color: CustomAppColors.tertiaryLight, fontWeight: FontWeight.w600),
      unselectedLabelStyle: TextThemes.scaleCustom(
        TextThemes.darkStyle.labelSmall!,
        scale,
      ).copyWith(color: CustomAppColors.gray4),
      type: BottomNavigationBarType.fixed,
      elevation: 0,
    );
  }
}
