import 'package:flutter/material.dart';

import 'package:clean_architecture_template/common/styles/app_colors.dart';

class BottomAppBarThemes {
  const BottomAppBarThemes._();

  static BottomAppBarThemeData scaled(double scale) {
    return BottomAppBarThemeData(
      color: CustomAppColors.gray1,
      elevation: 8,
      height: 56 * scale,
      padding: EdgeInsets.symmetric(
        horizontal: 16 * scale,
        vertical: 8 * scale,
      ),
    );
  }
}
