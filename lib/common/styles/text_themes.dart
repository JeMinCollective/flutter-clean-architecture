import 'package:flutter/material.dart';

import 'package:clean_architecture_template/common/styles/app_colors.dart';
import 'package:clean_architecture_template/common/styles/tokens/typography_tokens.dart';

/// Text themes using Figtree font family and TypographyTokens.
/// Aligned with Figma Design System typography specifications.
class TextThemes {
  const TextThemes._();

  /// Letter spacing per Figma Typography Tokens:
  /// Tighter=-0.8, Tight=-0.4, Normal=0, Wide=0.4, Wider=0.8, Widest=1.6
  static final defaultStyle = TextTheme(
    displayLarge: TextStyle(
      fontFamily: fontValues[FontToken.defaultFont],
      fontWeight: fontWeightValues[FontWeightToken.bold],
      fontSize: fontSizeValues[FontSizeToken.x4l],
      height: 1.2,
      letterSpacing: letterSpacingValues[LetterSpacingToken.tighter],
      color: CustomAppColors.gray1,
    ),
    displayMedium: TextStyle(
      fontFamily: fontValues[FontToken.defaultFont],
      fontWeight: fontWeightValues[FontWeightToken.bold],
      fontSize: fontSizeValues[FontSizeToken.x3l],
      height: 1.25,
      letterSpacing: letterSpacingValues[LetterSpacingToken.tight],
      color: CustomAppColors.gray1,
    ),
    displaySmall: TextStyle(
      fontFamily: fontValues[FontToken.defaultFont],
      fontWeight: fontWeightValues[FontWeightToken.bold],
      fontSize: fontSizeValues[FontSizeToken.x2l],
      height: 1.3,
      letterSpacing: letterSpacingValues[LetterSpacingToken.tight],
      color: CustomAppColors.gray1,
    ),
    headlineLarge: TextStyle(
      fontFamily: fontValues[FontToken.defaultFont],
      fontWeight: fontWeightValues[FontWeightToken.bold],
      fontSize: fontSizeValues[FontSizeToken.xl],
      height: 1.3,
      letterSpacing: letterSpacingValues[LetterSpacingToken.tight],
      color: CustomAppColors.gray1,
    ),
    headlineMedium: TextStyle(
      fontFamily: fontValues[FontToken.defaultFont],
      fontWeight: fontWeightValues[FontWeightToken.semibold],
      fontSize: fontSizeValues[FontSizeToken.lg],
      height: 1.4,
      letterSpacing: letterSpacingValues[LetterSpacingToken.normal],
      color: CustomAppColors.gray1,
    ),
    headlineSmall: TextStyle(
      fontFamily: fontValues[FontToken.defaultFont],
      fontWeight: fontWeightValues[FontWeightToken.semibold],
      fontSize: fontSizeValues[FontSizeToken.md],
      height: 1.4,
      letterSpacing: letterSpacingValues[LetterSpacingToken.normal],
      color: CustomAppColors.gray1,
    ),
    titleLarge: TextStyle(
      fontFamily: fontValues[FontToken.defaultFont],
      fontWeight: fontWeightValues[FontWeightToken.semibold],
      fontSize: fontSizeValues[FontSizeToken.base],
      height: 1.5,
      letterSpacing: letterSpacingValues[LetterSpacingToken.normal],
      color: CustomAppColors.gray1,
    ),
    titleMedium: TextStyle(
      fontFamily: fontValues[FontToken.defaultFont],
      fontWeight: fontWeightValues[FontWeightToken.semibold],
      fontSize: fontSizeValues[FontSizeToken.sm],
      height: 1.5,
      letterSpacing: letterSpacingValues[LetterSpacingToken.normal],
      color: CustomAppColors.gray1,
    ),
    titleSmall: TextStyle(
      fontFamily: fontValues[FontToken.defaultFont],
      fontWeight: fontWeightValues[FontWeightToken.semibold],
      fontSize: fontSizeValues[FontSizeToken.sm],
      height: 1.5,
      letterSpacing: letterSpacingValues[LetterSpacingToken.normal],
      color: CustomAppColors.gray1,
    ),
    bodyLarge: TextStyle(
      fontFamily: fontValues[FontToken.defaultFont],
      fontWeight: fontWeightValues[FontWeightToken.regular],
      fontSize: fontSizeValues[FontSizeToken.base],
      height: 1.5,
      letterSpacing: letterSpacingValues[LetterSpacingToken.normal],
      color: CustomAppColors.gray1,
    ),
    bodyMedium: TextStyle(
      fontFamily: fontValues[FontToken.defaultFont],
      fontWeight: fontWeightValues[FontWeightToken.regular],
      fontSize: fontSizeValues[FontSizeToken.sm],
      height: 1.6,
      letterSpacing: letterSpacingValues[LetterSpacingToken.normal],
      color: CustomAppColors.gray2,
    ),
    bodySmall: TextStyle(
      fontFamily: fontValues[FontToken.defaultFont],
      fontWeight: fontWeightValues[FontWeightToken.regular],
      fontSize: fontSizeValues[FontSizeToken.sm],
      height: 1.6,
      letterSpacing: letterSpacingValues[LetterSpacingToken.normal],
      color: CustomAppColors.gray2,
    ),
    labelLarge: TextStyle(
      fontFamily: fontValues[FontToken.defaultFont],
      fontWeight: fontWeightValues[FontWeightToken.semibold],
      fontSize: fontSizeValues[FontSizeToken.base],
      height: 1.4,
      letterSpacing: letterSpacingValues[LetterSpacingToken.normal],
      color: CustomAppColors.white,
    ),
    labelMedium: TextStyle(
      fontFamily: fontValues[FontToken.defaultFont],
      fontWeight: fontWeightValues[FontWeightToken.semibold],
      fontSize: fontSizeValues[FontSizeToken.sm],
      height: 1.4,
      letterSpacing: letterSpacingValues[LetterSpacingToken.normal],
      color: CustomAppColors.gray1,
    ),
    labelSmall: TextStyle(
      fontFamily: fontValues[FontToken.defaultFont],
      fontWeight: fontWeightValues[FontWeightToken.regular],
      fontSize: fontSizeValues[FontSizeToken.xs],
      height: 1.5,
      letterSpacing: letterSpacingValues[LetterSpacingToken.normal],
      color: CustomAppColors.gray3,
    ),
  );

  static TextTheme darkStyle = TextTheme(
    displayLarge: defaultStyle.displayLarge!.copyWith(
      color: CustomAppColors.white,
    ),
    displayMedium: defaultStyle.displayMedium!.copyWith(
      color: CustomAppColors.white,
    ),
    displaySmall: defaultStyle.displaySmall!.copyWith(
      color: CustomAppColors.white,
    ),
    headlineLarge: defaultStyle.headlineLarge!.copyWith(
      color: CustomAppColors.white,
    ),
    headlineMedium: defaultStyle.headlineMedium!.copyWith(
      color: CustomAppColors.white,
    ),
    headlineSmall: defaultStyle.headlineSmall!.copyWith(
      color: CustomAppColors.white,
    ),
    titleLarge: defaultStyle.titleLarge!.copyWith(color: CustomAppColors.white),
    titleMedium: defaultStyle.titleMedium!.copyWith(
      color: CustomAppColors.white,
    ),
    titleSmall: defaultStyle.titleSmall!.copyWith(color: CustomAppColors.white),
    bodyLarge: defaultStyle.bodyLarge!.copyWith(color: CustomAppColors.gray6),
    bodyMedium: defaultStyle.bodyMedium!.copyWith(color: CustomAppColors.gray5),
    bodySmall: defaultStyle.bodySmall!.copyWith(color: CustomAppColors.gray5),
    labelLarge: defaultStyle.labelLarge!.copyWith(color: CustomAppColors.white),
    labelMedium: defaultStyle.labelMedium!.copyWith(
      color: CustomAppColors.white,
    ),
    labelSmall: defaultStyle.labelSmall!.copyWith(color: CustomAppColors.gray4),
  );

  // Custom text styles for specific use cases

  /// Link text style - "Forgot Password?", "Contact Support"
  static TextStyle get link => TextStyle(
    fontFamily: fontValues[FontToken.defaultFont],
    fontWeight: fontWeightValues[FontWeightToken.regular],
    fontSize: fontSizeValues[FontSizeToken.sm],
    height: 1.5,
    letterSpacing: letterSpacingValues[LetterSpacingToken.normal],
    color: CustomAppColors.primary,
    decoration: TextDecoration.none,
  );

  /// Link text style (bold variant)
  static TextStyle get linkBold => TextStyle(
    fontFamily: fontValues[FontToken.defaultFont],
    fontWeight: fontWeightValues[FontWeightToken.semibold],
    fontSize: fontSizeValues[FontSizeToken.sm],
    height: 1.5,
    letterSpacing: letterSpacingValues[LetterSpacingToken.normal],
    color: CustomAppColors.primary,
    decoration: TextDecoration.none,
  );

  /// Input field placeholder text
  static TextStyle get placeholder => TextStyle(
    fontFamily: fontValues[FontToken.defaultFont],
    fontWeight: fontWeightValues[FontWeightToken.regular],
    fontSize: fontSizeValues[FontSizeToken.base],
    height: 1.5,
    letterSpacing: letterSpacingValues[LetterSpacingToken.normal],
    color: CustomAppColors.gray3,
  );

  /// Footer text - "© Trackify • Android V3.2.2"
  static TextStyle get footer => TextStyle(
    fontFamily: fontValues[FontToken.defaultFont],
    fontWeight: fontWeightValues[FontWeightToken.regular],
    fontSize: fontSizeValues[FontSizeToken.xs],
    height: 1.5,
    letterSpacing: letterSpacingValues[LetterSpacingToken.normal],
    color: CustomAppColors.gray3,
  );

  /// Button text - Primary
  static TextStyle get buttonPrimary => TextStyle(
    fontFamily: fontValues[FontToken.defaultFont],
    fontWeight: fontWeightValues[FontWeightToken.semibold],
    fontSize: fontSizeValues[FontSizeToken.base],
    height: 1.25,
    letterSpacing: letterSpacingValues[LetterSpacingToken.wide],
    color: CustomAppColors.white,
  );

  /// Button text - Secondary
  static TextStyle get buttonSecondary => TextStyle(
    fontFamily: fontValues[FontToken.defaultFont],
    fontWeight: fontWeightValues[FontWeightToken.medium],
    fontSize: fontSizeValues[FontSizeToken.base],
    height: 1.25,
    letterSpacing: letterSpacingValues[LetterSpacingToken.wide],
    color: CustomAppColors.gray1,
  );

  /// Input label - Uppercase style
  static TextStyle get inputLabel => TextStyle(
    fontFamily: fontValues[FontToken.defaultFont],
    fontWeight: fontWeightValues[FontWeightToken.semibold],
    fontSize: fontSizeValues[FontSizeToken.xs],
    height: 1.5,
    letterSpacing: letterSpacingValues[LetterSpacingToken.widest],
    color: CustomAppColors.gray1,
  );

  /// Overline text - Used for categories, tags
  static TextStyle get overline => TextStyle(
    fontFamily: fontValues[FontToken.defaultFont],
    fontWeight: fontWeightValues[FontWeightToken.semibold],
    fontSize: fontSizeValues[FontSizeToken.xs],
    height: 1.5,
    letterSpacing: letterSpacingValues[LetterSpacingToken.widest],
    color: CustomAppColors.gray3,
  );

  /// Returns a TextTheme with all sizes scaled by [scale].
  static TextTheme scaled(double scale) {
    return TextTheme(
      displayLarge: _scaleStyle(defaultStyle.displayLarge!, scale),
      displayMedium: _scaleStyle(defaultStyle.displayMedium!, scale),
      displaySmall: _scaleStyle(defaultStyle.displaySmall!, scale),
      headlineLarge: _scaleStyle(defaultStyle.headlineLarge!, scale),
      headlineMedium: _scaleStyle(defaultStyle.headlineMedium!, scale),
      headlineSmall: _scaleStyle(defaultStyle.headlineSmall!, scale),
      titleLarge: _scaleStyle(defaultStyle.titleLarge!, scale),
      titleMedium: _scaleStyle(defaultStyle.titleMedium!, scale),
      titleSmall: _scaleStyle(defaultStyle.titleSmall!, scale),
      bodyLarge: _scaleStyle(defaultStyle.bodyLarge!, scale),
      bodyMedium: _scaleStyle(defaultStyle.bodyMedium!, scale),
      bodySmall: _scaleStyle(defaultStyle.bodySmall!, scale),
      labelLarge: _scaleStyle(defaultStyle.labelLarge!, scale),
      labelMedium: _scaleStyle(defaultStyle.labelMedium!, scale),
      labelSmall: _scaleStyle(defaultStyle.labelSmall!, scale),
    );
  }

  /// Returns dark TextTheme with all sizes scaled by [scale].
  static TextTheme darkScaled(double scale) {
    return TextTheme(
      displayLarge: _scaleStyle(darkStyle.displayLarge!, scale),
      displayMedium: _scaleStyle(darkStyle.displayMedium!, scale),
      displaySmall: _scaleStyle(darkStyle.displaySmall!, scale),
      headlineLarge: _scaleStyle(darkStyle.headlineLarge!, scale),
      headlineMedium: _scaleStyle(darkStyle.headlineMedium!, scale),
      headlineSmall: _scaleStyle(darkStyle.headlineSmall!, scale),
      titleLarge: _scaleStyle(darkStyle.titleLarge!, scale),
      titleMedium: _scaleStyle(darkStyle.titleMedium!, scale),
      titleSmall: _scaleStyle(darkStyle.titleSmall!, scale),
      bodyLarge: _scaleStyle(darkStyle.bodyLarge!, scale),
      bodyMedium: _scaleStyle(darkStyle.bodyMedium!, scale),
      bodySmall: _scaleStyle(darkStyle.bodySmall!, scale),
      labelLarge: _scaleStyle(darkStyle.labelLarge!, scale),
      labelMedium: _scaleStyle(darkStyle.labelMedium!, scale),
      labelSmall: _scaleStyle(darkStyle.labelSmall!, scale),
    );
  }

  static TextStyle _scaleStyle(TextStyle style, double scale) {
    return style.copyWith(
      fontSize: (style.fontSize ?? 14) * scale,
      letterSpacing:
          style.letterSpacing != null ? (style.letterSpacing! * scale) : null,
    );
  }

  /// Returns custom TextStyle scaled by [scale].
  static TextStyle scaleCustom(TextStyle style, double scale) =>
      _scaleStyle(style, scale);
}
