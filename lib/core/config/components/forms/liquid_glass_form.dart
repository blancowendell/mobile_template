import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mobile_template/core/config/app_colors.dart';

class LiquidGlassForm extends StatelessWidget {
  final Widget child;
  final double blur;
  final double borderRadius;
  final EdgeInsets padding;
  final Color? color; // optional custom color
  final Color? borderColor; // optional border color

  const LiquidGlassForm({
    super.key,
    required this.child,
    this.blur = 20.0,
    this.borderRadius = 16.0,
    this.padding = const EdgeInsets.all(16),
    this.color,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = color ?? AppColors.primary.withOpacity(0.15);
    final bdColor = borderColor ?? AppColors.accent.withOpacity(0.25);

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: bdColor, width: 1.2),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 20,
                spreadRadius: 2,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}
