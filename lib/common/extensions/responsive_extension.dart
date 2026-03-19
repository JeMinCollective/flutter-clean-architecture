import 'package:flutter/material.dart';

import 'package:clean_architecture_template/common/models/responsive.dart';
import 'package:clean_architecture_template/common/scaling/scale_calculator.dart';
import 'package:clean_architecture_template/common/styles/button_styles.dart';

extension ResponsiveExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  Size get screenSize => MediaQuery.of(this).size;

  bool get isMobile => width < 650;
  bool get isTablet => width >= 650 && width < 1024;
  bool get isDesktop => width >= 1024;

  double get mobile => 650;
  double get tablet => 1024;

  /// Proportional scale factor for UI (fonts, spacing, icons).
  /// Based on reference 375×812; clamped to [0.8, 1.5].
  double get scaleFactor => ScaleCalculator.scaleFactor(screenSize);

  /// Returns [value] scaled by the current screen's scale factor.
  double scale(double value) => value * scaleFactor;

  /// Primary button style scaled for current screen.
  ButtonStyle get primaryButtonStyle => ButtonStyles.scaled(scaleFactor);

  /// White button style scaled for current screen.
  ButtonStyle get whiteButtonStyle => ButtonStyles.whiteScaled(scaleFactor);

  /// Returns [BorderRadius.circular] with scaled radius.
  BorderRadius scaledRadius(double radius) =>
      BorderRadius.circular(radius * scaleFactor);

  Responsive get responsive {
    if (isMobile) {
      return const Responsive.isMobile();
    } else if (isTablet) {
      return const Responsive.isTablet();
    } else {
      return const Responsive.isDesktop();
    }
  }
}
