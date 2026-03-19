import 'package:flutter/material.dart';

import 'package:clean_architecture_template/common/scaling/scale_calculator.dart';
import 'package:clean_architecture_template/common/styles/app_themes.dart';

/// Builds [MaterialApp] (or similar) with a theme scaled by screen size.
/// Rebuilds when the window is resized or rotated.
///
/// Usage:
/// ```dart
/// ScaledThemeProvider(
///   builder: (theme) => MaterialApp(
///     theme: theme,
///     home: HomePage(),
///   ),
/// )
/// ```
class ScaledThemeProvider extends StatelessWidget {
  const ScaledThemeProvider({
    super.key,
    required this.builder,
    this.dark = false,
  });

  final Widget Function(ThemeData theme) builder;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final size = MediaQuery.sizeOf(context);
        final scale = ScaleCalculator.scaleFactor(size);
        final theme = AppThemes.buildScaled(scale, dark: dark);
        return builder(theme);
      },
    );
  }
}
