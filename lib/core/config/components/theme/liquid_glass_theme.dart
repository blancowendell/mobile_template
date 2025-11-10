import 'package:flutter/material.dart';
import 'dart:ui'; // <-- add this

class LiquidGlassTheme extends ThemeExtension<LiquidGlassTheme> {
  final double blur;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;

  const LiquidGlassTheme({
    required this.blur,
    required this.backgroundColor,
    required this.borderColor,
    this.borderWidth = 1.2,
  });

  @override
  LiquidGlassTheme copyWith({
    double? blur,
    Color? backgroundColor,
    Color? borderColor,
    double? borderWidth,
  }) {
    return LiquidGlassTheme(
      blur: blur ?? this.blur,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      borderWidth: borderWidth ?? this.borderWidth,
    );
  }

  @override
  LiquidGlassTheme lerp(ThemeExtension<LiquidGlassTheme>? other, double t) {
    if (other is! LiquidGlassTheme) return this;

    return LiquidGlassTheme(
      blur: lerpDouble(blur, other.blur, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
      borderWidth: lerpDouble(borderWidth, other.borderWidth, t)!,
    );
  }
}
