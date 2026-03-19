import 'package:flutter/material.dart';

import 'package:clean_architecture_template/common/styles/app_colors.dart';
import 'package:clean_architecture_template/common/styles/text_themes.dart';

class ButtonStyles {
  const ButtonStyles._();

  /// Returns default button style with dimensions scaled by [scale].
  static ButtonStyle scaled(double scale) {
    return ButtonStyle(
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(
          horizontal: 27 * scale,
          vertical: 16 * scale,
        ),
      ),
      textStyle: WidgetStateProperty.all(
        TextThemes.scaleCustom(TextThemes.defaultStyle.labelLarge!, scale),
      ),
      foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        return CustomAppColors.white;
      }),
      minimumSize: WidgetStateProperty.all(
        Size(96 * scale, 56 * scale),
      ),
      backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.disabled)) {
          return AppColors.defaultStyle().disabled!;
        }
        return CustomAppColors.primary;
      }),
      overlayColor: WidgetStateProperty.resolveWith<Color>((states) {
        return CustomAppColors.primaryVariant;
      }),
      shape: WidgetStateProperty.resolveWith<OutlinedBorder>((states) {
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28 * scale),
        );
      }),
      elevation: WidgetStateProperty.resolveWith<double>((states) {
        if (states.contains(WidgetState.pressed)) {
          return 4 * scale;
        }
        return 2 * scale;
      }),
    );
  }

  static ButtonStyle defaultStyle = ButtonStyle(
    padding: WidgetStateProperty.resolveWith<EdgeInsets>((states) {
      return const EdgeInsets.symmetric(horizontal: 27, vertical: 16);
    }),
    textStyle: WidgetStateProperty.all(TextThemes.defaultStyle.labelLarge),
    foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
      return CustomAppColors.white;
    }),
    minimumSize: WidgetStateProperty.all(const Size(96, 56)),
    backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
      if (states.contains(WidgetState.disabled)) {
        return AppColors.defaultStyle().disabled!;
      }
      return CustomAppColors.primary;
    }),
    overlayColor: WidgetStateProperty.resolveWith<Color>((states) {
      return CustomAppColors.primaryVariant;
    }),
    shape: WidgetStateProperty.resolveWith<OutlinedBorder>((states) {
      return RoundedRectangleBorder(borderRadius: BorderRadius.circular(28));
    }),
    elevation: WidgetStateProperty.resolveWith<double>((states) {
      if (states.contains(WidgetState.pressed)) {
        return 4;
      }
      return 2;
    }),
  );

  static ButtonStyle white = defaultStyle.copyWith(
    foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
      return CustomAppColors.gray1;
    }),
    backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
      if (states.contains(WidgetState.disabled)) {
        return CustomAppColors.gray4;
      }
      return CustomAppColors.gray6;
    }),
    overlayColor: WidgetStateProperty.resolveWith<Color>((states) {
      return CustomAppColors.gray5;
    }),
    shape: WidgetStateProperty.resolveWith<OutlinedBorder>((states) {
      return RoundedRectangleBorder(borderRadius: BorderRadius.circular(28));
    }),
  );

  static ButtonStyle whiteBordered = white.copyWith(
    shape: WidgetStateProperty.resolveWith<OutlinedBorder>((states) {
      if (states.contains(WidgetState.pressed)) {
        return RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
      }

      return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: CustomAppColors.primary, width: 1.2),
      );
    }),
  );

  static ButtonStyle greenBordered = white.copyWith(
    shape: WidgetStateProperty.resolveWith<OutlinedBorder>((states) {
      if (states.contains(WidgetState.pressed)) {
        return RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
      }

      if (states.contains(WidgetState.disabled)) {
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: Colors.transparent, width: 1.2),
        );
      }

      return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: CustomAppColors.success, width: 1.2),
      );
    }),
  );
  static ButtonStyle yellowBordered = white.copyWith(
    shape: WidgetStateProperty.resolveWith<OutlinedBorder>((states) {
      if (states.contains(WidgetState.pressed)) {
        return RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
      }

      return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: CustomAppColors.warning, width: 1.2),
      );
    }),
  );

  static ButtonStyle transparentWhiteBordered = ButtonStyle(
    foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
    backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
    overlayColor: WidgetStateProperty.resolveWith<Color>((states) {
      return CustomAppColors.primary.withAlpha(40);
    }),
    shape: WidgetStateProperty.resolveWith<OutlinedBorder>((states) {
      return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: CustomAppColors.white, width: 1),
      );
    }),
  );

  /// Returns white button style scaled by [scale].
  static ButtonStyle whiteScaled(double scale) {
    return scaled(scale).copyWith(
      foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        return CustomAppColors.gray1;
      }),
      backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.disabled)) {
          return CustomAppColors.gray4;
        }
        return CustomAppColors.gray6;
      }),
      overlayColor: WidgetStateProperty.resolveWith<Color>((states) {
        return CustomAppColors.gray5;
      }),
      shape: WidgetStateProperty.resolveWith<OutlinedBorder>((states) {
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28 * scale),
        );
      }),
    );
  }
}
