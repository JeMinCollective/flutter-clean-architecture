import 'package:flutter/material.dart';

import 'package:clean_architecture_template/common/styles/app_colors.dart';
import 'package:clean_architecture_template/common/styles/icon_themes.dart';

class AppBarThemes {
  const AppBarThemes._();

  static const defaultStyle = AppBarTheme(
    elevation: 0,
    iconTheme: IconThemes.defaultStyle,
    backgroundColor: Colors.transparent,
    centerTitle: false,
    titleTextStyle: TextStyle(
      color: CustomAppColors.primaryText,
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
  );

  static const darkStyle = AppBarTheme(
    backgroundColor: CustomAppColors.darkScaffold,
    elevation: 0,
    iconTheme: IconThemes.darkStyle,
    titleTextStyle: TextStyle(
      color: CustomAppColors.gray6,
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
  );

  /// Returns default app bar theme with dimensions scaled by [scale].
  static AppBarTheme scaled(double scale) {
    return AppBarTheme(
      elevation: 0,
      iconTheme: IconThemes.scaled(scale),
      backgroundColor: Colors.transparent,
      centerTitle: false,
      titleTextStyle: TextStyle(
        color: CustomAppColors.primaryText,
        fontSize: 28 * scale,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  /// Returns dark app bar theme with dimensions scaled by [scale].
  static AppBarTheme darkScaled(double scale) {
    return AppBarTheme(
      backgroundColor: CustomAppColors.darkScaffold,
      elevation: 0,
      iconTheme: IconThemes.darkScaled(scale),
      titleTextStyle: TextStyle(
        color: CustomAppColors.gray6,
        fontSize: 28 * scale,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
