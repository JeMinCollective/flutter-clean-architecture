import 'package:flutter/material.dart';

import 'package:clean_architecture_template/common/styles/app_colors.dart';
import 'package:clean_architecture_template/common/styles/text_themes.dart';

/// Theme extension for custom text styles (link, placeholder, inputLabel, etc.).
/// Use via [context.appTextStyles] for scalable, theme-aware styles.
class AppTextStyles extends ThemeExtension<AppTextStyles> {
  const AppTextStyles({
    required this.link,
    required this.linkBold,
    required this.placeholder,
    required this.footer,
    required this.buttonPrimary,
    required this.buttonSecondary,
    required this.inputLabel,
    required this.overline,
  });

  final TextStyle link;
  final TextStyle linkBold;
  final TextStyle placeholder;
  final TextStyle footer;
  final TextStyle buttonPrimary;
  final TextStyle buttonSecondary;
  final TextStyle inputLabel;
  final TextStyle overline;

  static AppTextStyles _fromBase(double scale) {
    return AppTextStyles(
      link: TextThemes.scaleCustom(TextThemes.link, scale),
      linkBold: TextThemes.scaleCustom(TextThemes.linkBold, scale),
      placeholder: TextThemes.scaleCustom(TextThemes.placeholder, scale),
      footer: TextThemes.scaleCustom(TextThemes.footer, scale),
      buttonPrimary: TextThemes.scaleCustom(TextThemes.buttonPrimary, scale),
      buttonSecondary: TextThemes.scaleCustom(TextThemes.buttonSecondary, scale),
      inputLabel: TextThemes.scaleCustom(TextThemes.inputLabel, scale),
      overline: TextThemes.scaleCustom(TextThemes.overline, scale),
    );
  }

  factory AppTextStyles.light(double scale) => _fromBase(scale);

  factory AppTextStyles.dark(double scale) {
    return AppTextStyles(
      link: TextThemes.scaleCustom(TextThemes.link, scale)
          .copyWith(color: CustomAppColors.tertiaryLight),
      linkBold: TextThemes.scaleCustom(TextThemes.linkBold, scale)
          .copyWith(color: CustomAppColors.tertiaryLight),
      placeholder: TextThemes.scaleCustom(TextThemes.placeholder, scale)
          .copyWith(color: CustomAppColors.gray4),
      footer: TextThemes.scaleCustom(TextThemes.footer, scale)
          .copyWith(color: CustomAppColors.gray4),
      buttonPrimary: TextThemes.scaleCustom(TextThemes.buttonPrimary, scale),
      buttonSecondary: TextThemes.scaleCustom(TextThemes.buttonSecondary, scale)
          .copyWith(color: CustomAppColors.gray6),
      inputLabel: TextThemes.scaleCustom(TextThemes.inputLabel, scale)
          .copyWith(color: CustomAppColors.gray4),
      overline: TextThemes.scaleCustom(TextThemes.overline, scale)
          .copyWith(color: CustomAppColors.gray4),
    );
  }

  @override
  ThemeExtension<AppTextStyles> copyWith({
    TextStyle? link,
    TextStyle? linkBold,
    TextStyle? placeholder,
    TextStyle? footer,
    TextStyle? buttonPrimary,
    TextStyle? buttonSecondary,
    TextStyle? inputLabel,
    TextStyle? overline,
  }) {
    return AppTextStyles(
      link: link ?? this.link,
      linkBold: linkBold ?? this.linkBold,
      placeholder: placeholder ?? this.placeholder,
      footer: footer ?? this.footer,
      buttonPrimary: buttonPrimary ?? this.buttonPrimary,
      buttonSecondary: buttonSecondary ?? this.buttonSecondary,
      inputLabel: inputLabel ?? this.inputLabel,
      overline: overline ?? this.overline,
    );
  }

  @override
  ThemeExtension<AppTextStyles> lerp(
    ThemeExtension<AppTextStyles>? other,
    double t,
  ) {
    if (other is! AppTextStyles) return this;
    return AppTextStyles(
      link: TextStyle.lerp(link, other.link, t)!,
      linkBold: TextStyle.lerp(linkBold, other.linkBold, t)!,
      placeholder: TextStyle.lerp(placeholder, other.placeholder, t)!,
      footer: TextStyle.lerp(footer, other.footer, t)!,
      buttonPrimary: TextStyle.lerp(buttonPrimary, other.buttonPrimary, t)!,
      buttonSecondary:
          TextStyle.lerp(buttonSecondary, other.buttonSecondary, t)!,
      inputLabel: TextStyle.lerp(inputLabel, other.inputLabel, t)!,
      overline: TextStyle.lerp(overline, other.overline, t)!,
    );
  }
}
