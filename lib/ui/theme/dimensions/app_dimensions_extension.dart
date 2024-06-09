import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show ThemeExtension;
import 'package:tec_notes_layout/ui/theme/theme.dart' show AppDimensions;

class AppDimensionsExtension extends ThemeExtension<AppDimensionsExtension>
    implements AppDimensions {
  AppDimensionsExtension({
    required AppDimensions dimensions,
  }) : _dimensions = dimensions;

  final AppDimensions _dimensions;

  @override
  double get noneValue => _dimensions.noneValue;

  @override
  double get smallValue => _dimensions.smallValue;

  @override
  double get mediumValue => _dimensions.mediumValue;

  @override
  double get largeValue => _dimensions.largeValue;

  @override
  double get extraLargeValue => _dimensions.extraLargeValue;

  @override
  double get borderRadiusNone => _dimensions.borderRadiusNone;

  @override
  double get borderRadiusSmall => _dimensions.borderRadiusSmall;

  @override
  double get borderRadiusMedium => _dimensions.borderRadiusMedium;

  @override
  double get borderRadiusLarge => _dimensions.borderRadiusLarge;

  @override
  double get paddingNone => _dimensions.paddingNone;

  @override
  double get paddingSmall => _dimensions.paddingSmall.factor;

  @override
  double get paddingMedium => _dimensions.paddingMedium.factor;

  @override
  double get paddingLarge => _dimensions.paddingLarge.factor;

  @override
  double get paddingExtraLarge => _dimensions.paddingExtraLarge.factor;

  @override
  ThemeExtension<AppDimensionsExtension> copyWith() {
    return this;
  }

  @override
  ThemeExtension<AppDimensionsExtension> lerp(
    covariant ThemeExtension<AppDimensionsExtension>? other,
    double t,
  ) {
    return this;
  }
}

extension on double {
  double get factor => this * (kIsWeb ? 2 : 1);
}
