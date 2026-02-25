/// Design tokens - base (unscaled) values for the design system.
/// These values are defined at the reference size (375×812) and scaled
/// at runtime based on actual screen size.
class DesignTokens {
  DesignTokens._();

  /// Reference dimensions (iPhone X / 14 Pro base)
  static const double refWidth = 375.0;
  static const double refHeight = 812.0;

  /// Scale factor bounds to avoid extreme sizes
  static const double minScale = 0.8;
  static const double maxScale = 1.5;

  // Font sizes (from TextThemes)
  static const double displayLarge = 36.0;
  static const double displayMedium = 32.0;
  static const double displaySmall = 28.0;
  static const double headlineLarge = 24.0;
  static const double headlineMedium = 20.0;
  static const double headlineSmall = 18.0;
  static const double titleLarge = 16.0;
  static const double titleMedium = 15.0;
  static const double titleSmall = 14.0;
  static const double bodyLarge = 16.0;
  static const double bodyMedium = 14.0;
  static const double bodySmall = 13.0;
  static const double labelLarge = 16.0;
  static const double labelMedium = 14.0;
  static const double labelSmall = 12.0;
  static const double link = 14.0;
  static const double placeholder = 16.0;
  static const double footer = 12.0;
  static const double buttonPrimary = 16.0;
  static const double buttonSecondary = 16.0;
  static const double inputLabel = 12.0;
  static const double overline = 11.0;
  static const double helperError = 12.0;

  // Icon sizes
  static const double iconSizeSmall = 16.0;
  static const double iconSizeMedium = 20.0;
  static const double iconSizeLarge = 24.0;
  static const double iconSizeXLarge = 32.0;
  static const double iconSizeXXLarge = 48.0;

  // Spacing (8px baseline grid)
  static const double space0 = 0;
  static const double space1 = 1;
  static const double space2 = 2;
  static const double space4 = 4;
  static const double space8 = 8;
  static const double space12 = 12;
  static const double space16 = 16;
  static const double space20 = 20;
  static const double space24 = 24;
  static const double space28 = 28;
  static const double space32 = 32;
  static const double space36 = 36;
  static const double space40 = 40;
  static const double space44 = 44;
  static const double space48 = 48;
  static const double space52 = 52;
  static const double space64 = 64;
  static const double space72 = 72;
  static const double space80 = 80;
  static const double space96 = 96;
  static const double space128 = 128;
  static const double space256 = 256;

  // Border radius
  static const double borderRadiusSmall = 12.0;
  static const double borderRadiusMedium = 20.0;
  static const double borderRadiusLarge = 28.0;
  static const double borderWidth = 1.0;
  static const double focusedBorderWidth = 1.5;

  // Button dimensions
  static const double buttonMinWidth = 96.0;
  static const double buttonMinHeight = 56.0;
  static const double buttonPaddingH = 27.0;
  static const double buttonPaddingV = 16.0;

  // Input dimensions
  static const double inputContentPaddingH = 16.0;
  static const double inputContentPaddingV = 18.0;
  static const double inputMinHeight = 56.0;

  // App bar
  static const double appBarTitleSize = 28.0;

  // Elevation / shadow
  static const double elevationDefault = 2.0;
  static const double elevationPressed = 4.0;
  static const double shadowBlur = 8.0;
  static const double shadowSpread = 0.0;
}
