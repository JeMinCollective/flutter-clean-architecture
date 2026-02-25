import 'package:flutter/material.dart';

import 'package:clean_architecture_template/common/styles/app_colors.dart';

class FloatingActionButtonThemes {
  const FloatingActionButtonThemes._();

  static const defaultStyle = FloatingActionButtonThemeData(
    backgroundColor: CustomAppColors.primary,
    foregroundColor: CustomAppColors.white,
  );

  static FloatingActionButtonThemeData scaled(double scale) {
    return FloatingActionButtonThemeData(
      backgroundColor: CustomAppColors.primary,
      foregroundColor: CustomAppColors.white,
      elevation: 6,
      focusElevation: 8,
      hoverElevation: 8,
      disabledElevation: 0,
      extendedPadding: EdgeInsets.symmetric(horizontal: 16 * scale),
      extendedTextStyle: TextStyle(
        fontFamily: 'Figtree',
        fontSize: 14 * scale,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
