import 'package:flutter/material.dart';

import 'package:clean_architecture_template/common/styles/app_text_styles.dart';

extension ThemeContextExtension on BuildContext {
  /// Custom text styles (link, placeholder, inputLabel, etc.) - scaled by theme.
  AppTextStyles get appTextStyles =>
      Theme.of(this).extension<AppTextStyles>()!;
}
