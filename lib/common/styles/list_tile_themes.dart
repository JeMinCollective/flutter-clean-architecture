import 'package:flutter/material.dart';

import 'package:clean_architecture_template/common/styles/app_colors.dart';

class ListTileThemes {
  const ListTileThemes._();

  static const defaultStyle = ListTileThemeData(
    tileColor: CustomAppColors.white,
    contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
  );

  static final roundedStyle = ListTileThemeData(
    tileColor: CustomAppColors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
  );

  static ListTileThemeData scaled(double scale) {
    return ListTileThemeData(
      tileColor: CustomAppColors.white,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 24 * scale,
        vertical: 4 * scale,
      ),
      minLeadingWidth: 40 * scale,
      minVerticalPadding: 8 * scale,
    );
  }
}
