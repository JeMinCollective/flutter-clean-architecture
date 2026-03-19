/// Design tokens for container styling (border radius, padding).
///
/// Aligns with Figma Design System container specifications.
/// Use with [BuildContext.scaledRadius] for responsive layouts.
class AppContainerTokens {
  AppContainerTokens._();

  /// Small radius (8px) - chips, small buttons.
  static const double radiusSm = 8;

  /// Medium radius (12px) - cards, inputs, standard containers.
  static const double radiusMd = 12;

  /// Large radius (16px) - modals, sheets.
  static const double radiusLg = 16;

  /// Extra large radius (20px) - dialogs, prominent surfaces.
  static const double radiusXl = 20;
}
