import 'package:flutter/material.dart'
    show AppBarTheme, Brightness, ColorScheme, ThemeData;
import 'package:tec_notes_layout/ui/theme/theme.dart';

class AppTheme {
  AppTheme({
    required AppColors darkColors,
    required AppColors lightColors,
  })  : _darkColors = darkColors,
        _lightColors = lightColors;

  final AppColors _darkColors;
  final AppColors _lightColors;

  ThemeData light() {
    final colors = _lightColors;
    const brightness = Brightness.light;
    final textTheme = AppTextTheme(colors: colors);
    return ThemeData.light(useMaterial3: true).copyWith(
      textTheme: textTheme,
      brightness: brightness,
      scaffoldBackgroundColor: colors.surface,
      colorScheme: _getColorScheme(brightness),
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: colors.surface,
      ),
      extensions: [
        AppColorsExtension(colors: colors),
        AppTextThemeExtension(textTheme: textTheme),
        AppDimensionsExtension(dimensions: AppDimensions()),
      ],
    );
  }

  ThemeData dark() {
    final colors = _darkColors;
    const brightness = Brightness.dark;
    final textTheme = AppTextTheme(colors: colors);
    return ThemeData.dark(useMaterial3: true).copyWith(
      textTheme: textTheme,
      brightness: brightness,
      scaffoldBackgroundColor: colors.surface,
      colorScheme: _getColorScheme(brightness),
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: colors.surface,
      ),
      extensions: [
        AppColorsExtension(colors: colors),
        AppTextThemeExtension(textTheme: textTheme),
        AppDimensionsExtension(dimensions: AppDimensions()),
      ],
    );
  }

  ColorScheme _getColorScheme(Brightness brightness) {
    final colors = brightness == Brightness.dark ? _darkColors : _lightColors;
    return switch (brightness) {
      Brightness.dark => ColorScheme.dark,
      Brightness.light => ColorScheme.light,
    }(
      error: colors.error,
      surface: colors.surface,
      primary: colors.primary,
      secondary: colors.secondary,
      tertiary: colors.tertiary,
      tertiaryFixed: colors.tertiaryFixed,
      onError: colors.onError,
      onSurface: colors.onSurface,
      onPrimary: colors.onPrimary,
      onSecondary: colors.onSecondary,
      onTertiary: colors.onTertiary,
      onTertiaryFixed: colors.onTertiaryFixed,
    );
  }
}
