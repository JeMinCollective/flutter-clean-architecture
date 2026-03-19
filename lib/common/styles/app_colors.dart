// Names tend to be determined from http://chir.ag/projects/name-that-color
// Mapped to Figma Design System via ColourTokens.
import 'package:flutter/material.dart';

import 'package:clean_architecture_template/common/styles/tokens/colour_tokens.dart';

extension BuildContextColorExtension on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
}

class CustomAppColors {
  const CustomAppColors._();

  static const primary = ColourTokens.primary500;
  static const primaryVariant = ColourTokens.primary600;
  static const secondary = ColourTokens.accent500;
  static const secondaryVariant = ColourTokens.accent400;
  static const white = ColourTokens.white;
  static const primaryBackground = ColourTokens.gray50;
  static const secondaryBackground = ColourTokens.primary50;
  static const primaryText = ColourTokens.gray950;
  static const secondaryText = ColourTokens.gray700;
  static const gray1 = ColourTokens.gray900;
  static const gray2 = ColourTokens.gray700;
  static const gray3 = ColourTokens.gray400;
  static const gray4 = ColourTokens.gray300;
  static const gray5 = ColourTokens.gray100;
  static const gray6 = ColourTokens.gray50;
  static const error = ColourTokens.error500;
  static const alert = ColourTokens.error600;
  static const success = ColourTokens.success500;
  static const warning = ColourTokens.warning500;
  static const darkScaffold = ColourTokens.gray950;
  static const darkPrimary = ColourTokens.gray900;
  static const darkCards = ColourTokens.gray800;
  static const tertiary = ColourTokens.accent300;
  static const tertiaryLight = ColourTokens.accent200;
  static const tertiaryDark = ColourTokens.accent400;
  static const primaryContainerLight = ColourTokens.primary50;
  static const tertiaryContainer = ColourTokens.primary50;
  static const errorContainer = ColourTokens.error50;
  static const errorContainerDark = ColourTokens.error900;
  static const errorDark = ColourTokens.error300;
  static const onErrorContainer = ColourTokens.error700;
}

class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    this.text,
    this.secondaryText,
    this.accentText,
    this.textOnColour,
    this.link,
    this.secondaryTextOnColour,
    this.placeholder,
    this.disabledText,
    this.successText,
    this.attentionText,
    this.warningText,
    this.neutralText,
    this.tappable,
    this.accent,
    this.foreground,
    this.background,
    this.divider,
    this.disabled,
    this.success,
    this.attention,
    this.warning,
    this.neutral,
    this.information,
    this.scrim,
  });

  factory AppColors.defaultStyle() {
    return const AppColors(
      text: ColourTokens.gray950,
      secondaryText: ColourTokens.gray700,
      accentText: ColourTokens.gray300,
      textOnColour: ColourTokens.white,
      link: ColourTokens.primary600,
      secondaryTextOnColour: ColourTokens.gray50,
      placeholder: ColourTokens.gray400,
      disabledText: ColourTokens.gray300,
      successText: ColourTokens.success700,
      attentionText: ColourTokens.warning600,
      warningText: ColourTokens.error500,
      neutralText: ColourTokens.gray700,
      tappable: ColourTokens.primary600,
      accent: ColourTokens.gray100,
      foreground: ColourTokens.white,
      background: ColourTokens.gray50,
      divider: ColourTokens.gray100,
      disabled: ColourTokens.gray100,
      success: ColourTokens.success500,
      attention: ColourTokens.warning500,
      warning: ColourTokens.error500,
      neutral: ColourTokens.gray400,
      information: ColourTokens.primary500,
      scrim: ColourTokens.black24,
    );
  }

  factory AppColors.dark() {
    return const AppColors(
      text: ColourTokens.gray50,
      secondaryText: ColourTokens.gray300,
      accentText: ColourTokens.gray100,
      textOnColour: ColourTokens.gray950,
      link: ColourTokens.accent300,
      secondaryTextOnColour: ColourTokens.gray900,
      placeholder: ColourTokens.gray400,
      disabledText: ColourTokens.gray600,
      successText: ColourTokens.success300,
      attentionText: ColourTokens.warning300,
      warningText: ColourTokens.error300,
      neutralText: ColourTokens.gray300,
      tappable: ColourTokens.accent300,
      accent: ColourTokens.gray600,
      foreground: ColourTokens.gray800,
      background: ColourTokens.gray950,
      divider: ColourTokens.gray600,
      disabled: ColourTokens.gray800,
      success: ColourTokens.success300,
      attention: ColourTokens.warning300,
      warning: ColourTokens.error300,
      neutral: ColourTokens.gray400,
      information: ColourTokens.accent300,
      scrim: ColourTokens.black72,
    );
  }

  final Color? text;
  final Color? secondaryText;
  final Color? accentText;
  final Color? textOnColour;
  final Color? link;
  final Color? secondaryTextOnColour;
  final Color? placeholder;
  final Color? disabledText;
  final Color? successText;
  final Color? attentionText;
  final Color? warningText;
  final Color? neutralText;
  final Color? tappable;
  final Color? accent;
  final Color? foreground;
  final Color? background;
  final Color? divider;
  final Color? disabled;
  final Color? success;
  final Color? attention;
  final Color? warning;
  final Color? neutral;
  final Color? information;
  final Color? scrim;

  @override
  ThemeExtension<AppColors> lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      text: Color.lerp(text, other.text, t),
      secondaryText: Color.lerp(secondaryText, other.secondaryText, t),
      accentText: Color.lerp(accentText, other.accentText, t),
      textOnColour: Color.lerp(textOnColour, other.textOnColour, t),
      link: Color.lerp(link, other.link, t),
      secondaryTextOnColour: Color.lerp(
        secondaryTextOnColour,
        other.secondaryTextOnColour,
        t,
      ),
      placeholder: Color.lerp(placeholder, other.placeholder, t),
      disabledText: Color.lerp(disabledText, other.disabledText, t),
      successText: Color.lerp(successText, other.successText, t),
      attentionText: Color.lerp(attentionText, other.attentionText, t),
      warningText: Color.lerp(warningText, other.warningText, t),
      neutralText: Color.lerp(neutralText, other.neutralText, t),
      tappable: Color.lerp(tappable, other.tappable, t),
      accent: Color.lerp(accent, other.accent, t),
      foreground: Color.lerp(foreground, other.foreground, t),
      background: Color.lerp(background, other.background, t),
      divider: Color.lerp(divider, other.divider, t),
      disabled: Color.lerp(disabled, other.disabled, t),
      success: Color.lerp(success, other.success, t),
      attention: Color.lerp(attention, other.attention, t),
      warning: Color.lerp(warning, other.warning, t),
      neutral: Color.lerp(neutral, other.neutral, t),
      information: Color.lerp(information, other.information, t),
      scrim: Color.lerp(scrim, other.scrim, t),
    );
  }

  @override
  AppColors copyWith({
    Color? text,
    Color? secondaryText,
    Color? accentText,
    Color? textOnColour,
    Color? link,
    Color? secondaryTextOnColour,
    Color? placeholder,
    Color? disabledText,
    Color? successText,
    Color? attentionText,
    Color? warningText,
    Color? neutralText,
    Color? tappable,
    Color? accent,
    Color? foreground,
    Color? background,
    Color? divider,
    Color? disabled,
    Color? success,
    Color? attention,
    Color? warning,
    Color? neutral,
    Color? information,
    Color? scrim,
  }) {
    return AppColors(
      text: text ?? this.text,
      secondaryText: secondaryText ?? this.secondaryText,
      accentText: accentText ?? this.accentText,
      textOnColour: textOnColour ?? this.textOnColour,
      link: link ?? this.link,
      secondaryTextOnColour:
          secondaryTextOnColour ?? this.secondaryTextOnColour,
      placeholder: placeholder ?? this.placeholder,
      disabledText: disabledText ?? this.disabledText,
      successText: successText ?? this.successText,
      attentionText: attentionText ?? this.attentionText,
      warningText: warningText ?? this.warningText,
      neutralText: neutralText ?? this.neutralText,
      tappable: tappable ?? this.tappable,
      accent: accent ?? this.accent,
      foreground: foreground ?? this.foreground,
      background: background ?? this.background,
      divider: divider ?? this.divider,
      disabled: disabled ?? this.disabled,
      success: success ?? this.success,
      attention: attention ?? this.attention,
      warning: warning ?? this.warning,
      neutral: neutral ?? this.neutral,
      information: information ?? this.information,
      scrim: scrim ?? this.scrim,
    );
  }
}
