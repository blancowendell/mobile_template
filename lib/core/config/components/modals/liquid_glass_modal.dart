import 'dart:ui';
import 'package:flutter/material.dart';
import '../theme/liquid_glass_theme.dart';

class LiquidGlassModal {
  static Future show(BuildContext context, {required Widget child, double borderRadius = 22}) {
    final t = Theme.of(context).extension<LiquidGlassTheme>()!;

    return showDialog(
      context: context,
      builder: (_) => Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: t.blur, sigmaY: t.blur),
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: t.backgroundColor,
                borderRadius: BorderRadius.circular(borderRadius),
                border: Border.all(color: t.borderColor, width: t.borderWidth),
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
