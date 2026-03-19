import 'dart:ui';

import 'package:clean_architecture_template/common/scaling/design_tokens.dart';

/// Computes scale factor for proportional UI scaling.
/// Uses reference size (375×812) so layout looks identical across devices.
class ScaleCalculator {
  ScaleCalculator._();

  /// Proportional scale based on screen size.
  /// scale = min(screenWidth/375, screenHeight/812), clamped to [0.8, 1.5]
  static double scaleFactor(Size screenSize) {
    final scaleW = screenSize.width / DesignTokens.refWidth;
    final scaleH = screenSize.height / DesignTokens.refHeight;
    final scale = scaleW < scaleH ? scaleW : scaleH;
    return scale.clamp(DesignTokens.minScale, DesignTokens.maxScale);
  }

  /// Optional: text scale factor with cap for readability.
  /// Can cap at 1.2 to prevent text from becoming too large on tablets.
  static double textScaleFactor(Size screenSize, {double maxScale = 1.2}) {
    final scale = scaleFactor(screenSize);
    return scale.clamp(DesignTokens.minScale, maxScale);
  }
}
