import 'package:flutter/material.dart';

import 'button_styles.dart';

class ElevatedButtonThemes {
  const ElevatedButtonThemes._();

  static ElevatedButtonThemeData defaultStyle = ElevatedButtonThemeData(
    style: ButtonStyles.defaultStyle,
  );

  static ElevatedButtonThemeData darkStyle = ElevatedButtonThemeData(
    style: ButtonStyles.white,
  );

  /// Returns elevated button theme with dimensions scaled by [scale].
  static ElevatedButtonThemeData scaled(double scale) {
    return ElevatedButtonThemeData(
      style: ButtonStyles.scaled(scale),
    );
  }

  /// Returns dark elevated button theme with dimensions scaled by [scale].
  static ElevatedButtonThemeData darkScaled(double scale) {
    return ElevatedButtonThemeData(
      style: ButtonStyles.whiteScaled(scale),
    );
  }
}
