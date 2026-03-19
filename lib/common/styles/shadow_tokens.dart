import 'package:flutter/material.dart';

import 'package:clean_architecture_template/common/styles/tokens/colour_tokens.dart';

/// Design tokens for shadows. Use for consistent elevation across cards,
/// inputs, and elevated surfaces.
///
/// Matches Figma Design System shadow specifications.
class AppShadowTokens {
  AppShadowTokens._();

  /// Subtle shadow for light elevation (e.g. section cards).
  /// Offset (0, 2), blur 8, alpha 0.04.
  static final List<BoxShadow> shadowSm = [
    BoxShadow(
      color: ColourTokens.gray950.withValues(alpha: 0.04),
      offset: const Offset(0, 2),
      blurRadius: 8,
      spreadRadius: 0,
    ),
  ];

  /// Medium shadow for inputs and elevated fields.
  /// Matches ElevatedInputField: offset (0,2) blur 8 alpha 0.08 +
  /// offset (0,1) blur 2 alpha 0.04.
  static final List<BoxShadow> shadowMd = [
    BoxShadow(
      color: ColourTokens.gray950.withValues(alpha: 0.08),
      offset: const Offset(0, 2),
      blurRadius: 8,
      spreadRadius: 0,
    ),
    BoxShadow(
      color: ColourTokens.gray950.withValues(alpha: 0.04),
      offset: const Offset(0, 1),
      blurRadius: 2,
      spreadRadius: 0,
    ),
  ];

  /// Stronger shadow for modals and prominent elevation.
  static final List<BoxShadow> shadowLg = [
    BoxShadow(
      color: ColourTokens.gray950.withValues(alpha: 0.12),
      offset: const Offset(0, 4),
      blurRadius: 12,
      spreadRadius: 0,
    ),
    BoxShadow(
      color: ColourTokens.gray950.withValues(alpha: 0.06),
      offset: const Offset(0, 2),
      blurRadius: 4,
      spreadRadius: 0,
    ),
  ];

  /// Returns [shadowMd] with offset and blur scaled by [scale].
  /// Use for responsive layouts (e.g. ElevatedInputField).
  static List<BoxShadow> shadowMdScaled(double scale) => [
        BoxShadow(
          color: ColourTokens.gray950.withValues(alpha: 0.08),
          offset: Offset(0, 2 * scale),
          blurRadius: 8 * scale,
          spreadRadius: 0,
        ),
        BoxShadow(
          color: ColourTokens.gray950.withValues(alpha: 0.04),
          offset: Offset(0, 1 * scale),
          blurRadius: 2 * scale,
          spreadRadius: 0,
        ),
      ];

  /// Returns [shadowSm] with offset and blur scaled by [scale].
  static List<BoxShadow> shadowSmScaled(double scale) => [
        BoxShadow(
          color: ColourTokens.gray950.withValues(alpha: 0.04),
          offset: Offset(0, 2 * scale),
          blurRadius: 8 * scale,
          spreadRadius: 0,
        ),
      ];

  /// Returns [shadowLg] with offset and blur scaled by [scale].
  static List<BoxShadow> shadowLgScaled(double scale) => [
        BoxShadow(
          color: ColourTokens.gray950.withValues(alpha: 0.12),
          offset: Offset(0, 4 * scale),
          blurRadius: 12 * scale,
          spreadRadius: 0,
        ),
        BoxShadow(
          color: ColourTokens.gray950.withValues(alpha: 0.06),
          offset: Offset(0, 2 * scale),
          blurRadius: 4 * scale,
          spreadRadius: 0,
        ),
      ];
}
