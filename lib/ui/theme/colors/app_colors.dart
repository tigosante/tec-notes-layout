import 'package:flutter/material.dart' show Color, MaterialColor;

abstract class AppColors {
  AppColors();

  final MaterialColor red = const MaterialColor(0xFFB00020, <int, Color>{});
  final MaterialColor blue = const MaterialColor(0xFF6ebae6, <int, Color>{});
  final MaterialColor white = const MaterialColor(0xFFffffff, <int, Color>{});

  final MaterialColor lighterGrey =
      const MaterialColor(0xFFf5f5f7, <int, Color>{});
  final MaterialColor ultraLightGrey =
      const MaterialColor(0xFFfafafa, <int, Color>{});
  final MaterialColor darkGrey =
      const MaterialColor(0xFF6e6e76, <int, Color>{});

  final MaterialColor black = const MaterialColor(0xFF000000, <int, Color>{});
  final MaterialColor black87 = const MaterialColor(0xFF2c2c34, <int, Color>{});
  final MaterialColor black95 = const MaterialColor(0xFF212126, <int, Color>{});

  final MaterialColor transparent =
      const MaterialColor(0x00000000, <int, Color>{});

  MaterialColor get link;

  MaterialColor get error;
  MaterialColor get onError;

  MaterialColor get primary;
  MaterialColor get onPrimary;

  MaterialColor get secondary;
  MaterialColor get onSecondary;

  MaterialColor get tertiary;
  MaterialColor get onTertiary;

  MaterialColor get tertiaryFixed;
  MaterialColor get onTertiaryFixed;

  MaterialColor get surface;
  MaterialColor get onSurface;

  factory AppColors.dark() => _AppColorsDark();
  factory AppColors.light() => _AppColorsLight();
}

class _AppColorsLight extends AppColors {
  @override
  MaterialColor get link => blue;

  @override
  MaterialColor get error => red;

  @override
  MaterialColor get onError => red;

  @override
  MaterialColor get primary => blue;

  @override
  MaterialColor get onPrimary => lighterGrey;

  @override
  MaterialColor get secondary => darkGrey;

  @override
  MaterialColor get onSecondary => black;

  @override
  MaterialColor get tertiary => white;

  @override
  MaterialColor get onTertiary => black87;

  @override
  MaterialColor get tertiaryFixed => ultraLightGrey;

  @override
  MaterialColor get onTertiaryFixed => black95;

  @override
  MaterialColor get surface => lighterGrey;

  @override
  MaterialColor get onSurface => black;
}

class _AppColorsDark extends AppColors {
  @override
  MaterialColor get link => blue;

  @override
  MaterialColor get error => red;

  @override
  MaterialColor get onError => red;

  @override
  MaterialColor get primary => lighterGrey;

  @override
  MaterialColor get onPrimary => black87;

  @override
  MaterialColor get secondary => darkGrey;

  @override
  MaterialColor get onSecondary => lighterGrey;

  @override
  MaterialColor get tertiary => black87;

  @override
  MaterialColor get onTertiary => white;

  @override
  MaterialColor get tertiaryFixed => black95;

  @override
  MaterialColor get onTertiaryFixed => ultraLightGrey;

  @override
  MaterialColor get surface => black;

  @override
  MaterialColor get onSurface => lighterGrey;
}
