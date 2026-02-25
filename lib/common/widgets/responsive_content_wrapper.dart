import 'package:flutter/material.dart';

import 'package:clean_architecture_template/common/extensions/responsive_extension.dart';

/// Wraps content with max-width constraints on tablet/desktop so it doesn't
/// stretch edge-to-edge. Use for forms, auth screens, and focused content.
///
/// [maxWidth] - Max width on tablet. Default 480 for forms, 600 for general content.
class ResponsiveContentWrapper extends StatelessWidget {
  const ResponsiveContentWrapper({
    super.key,
    required this.child,
    this.maxWidth = 480,
    this.align = Alignment.topCenter,
  });

  final Widget child;
  final double maxWidth;
  final Alignment align;

  @override
  Widget build(BuildContext context) {
    if (context.isMobile) {
      return child;
    }
    return Align(
      alignment: align,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: child,
      ),
    );
  }
}
