import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mobile_template/core/config/app_colors.dart';
import '../theme/liquid_glass_theme.dart';

class LiquidGlassButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final double borderRadius;
  final EdgeInsets padding;
  final double? blur;
  final Color? backgroundColor;
  final Color? borderColor;

  const LiquidGlassButton({
    super.key,
    required this.onTap,
    required this.text,
    this.borderRadius = 16,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
    this.blur,
    this.backgroundColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).extension<LiquidGlassTheme>()!;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: blur ?? t.blur,
            sigmaY: blur ?? t.blur,
          ),
          child: Container(
            padding: padding,
            decoration: BoxDecoration(
              color: backgroundColor ?? t.backgroundColor,
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(
                color: borderColor ?? t.borderColor,
                width: t.borderWidth,
              ),
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: isDark
                      ? Colors.white
                      : AppColors.text,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
