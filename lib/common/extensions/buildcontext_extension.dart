import 'package:flutter/material.dart';
import 'package:tec_notes_layout/ui/ui.dart';

extension BuildContextExtension on BuildContext {
  Brightness get brightness => Theme.of(this).brightness;

  Size get appSize => MediaQuery.sizeOf(this);

  AppColorsExtension get colors {
    return _getExtension<AppColorsExtension>();
  }

  AppDimensionsExtension get dimensions {
    return _getExtension<AppDimensionsExtension>();
  }

  AppTextThemeExtension get textTheme {
    return _getExtension<AppTextThemeExtension>();
  }

  T _getExtension<T>() {
    return Theme.of(this).extension<T>()!;
  }
}
