import 'package:flutter/material.dart';
import 'package:tec_notes_layout/ui/theme/theme.dart';

class AppTextTheme extends TextTheme {
  const AppTextTheme({
    required this.colors,
  });

  final AppColors colors;

  MaterialColor get textColor => colors.onSurface;

  @override
  TextStyle get displayLarge => TextStyle(
        fontSize: 48,
        color: textColor,
        height: 1.0834933333,
        letterSpacing: -0.048,
        fontWeight: FontWeight.w600,
      );

  @override
  TextStyle get displayMedium => TextStyle(
        fontSize: 44,
        color: textColor,
        height: 1.0834933333,
        letterSpacing: -0.048,
        fontWeight: FontWeight.w600,
      );

  @override
  TextStyle get displaySmall => TextStyle(
        fontSize: 40,
        color: textColor,
        height: 1.0834933333,
        letterSpacing: -0.048,
        fontWeight: FontWeight.w600,
      );

  @override
  TextStyle get headlineMedium => TextStyle(
        fontSize: 36,
        color: textColor,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get headlineSmall => TextStyle(
        fontSize: 32,
        color: textColor,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get titleLarge => TextStyle(
        fontSize: 28,
        color: textColor,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get titleMedium => TextStyle(
        fontSize: 22,
        color: textColor,
        fontWeight: FontWeight.normal,
      );

  @override
  TextStyle get titleSmall => TextStyle(
        fontSize: 18,
        color: textColor,
        fontWeight: FontWeight.normal,
      );

  @override
  TextStyle get bodyLarge => TextStyle(
        fontSize: 14,
        color: textColor,
        fontWeight: FontWeight.normal,
      );

  @override
  TextStyle get bodyMedium => TextStyle(
        fontSize: 12,
        color: textColor,
        fontWeight: FontWeight.normal,
      );

  @override
  TextStyle get bodySmall => TextStyle(
        fontSize: 10,
        color: textColor,
        fontWeight: FontWeight.normal,
      );

  @override
  TextStyle get labelLarge => TextStyle(
        fontSize: 14,
        color: textColor,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get labelSmall => TextStyle(
        fontSize: 10,
        color: textColor,
        fontWeight: FontWeight.normal,
      );
}
