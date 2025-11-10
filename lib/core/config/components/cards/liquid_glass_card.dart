import 'dart:ui';
import 'package:flutter/material.dart';
import '../theme/liquid_glass_theme.dart';

class LiquidGlassCard extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  final EdgeInsets padding;

  const LiquidGlassCard({
    super.key,
    required this.child,
    this.borderRadius = 20,
    this.padding = const EdgeInsets.all(16),
  });

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).extension<LiquidGlassTheme>()!;

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: t.blur, sigmaY: t.blur),
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            color: t.backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: t.borderColor, width: t.borderWidth),
          ),
          child: child,
        ),
      ),
    );
  }
}
