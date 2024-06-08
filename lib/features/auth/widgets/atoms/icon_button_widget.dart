import 'package:enefty_icons/enefty_icons.dart' show EneftyIcons;
import 'package:eva_icons_flutter/eva_icons_flutter.dart' show EvaIcons;
import 'package:flutter/material.dart';

enum IconButtonType {
  openEye,
  closeEye,
  apple,
  gitHub,
  google;

  IconData get getIcon {
    return switch (this) {
      IconButtonType.openEye => EneftyIcons.eye_outline,
      IconButtonType.closeEye => EneftyIcons.eye_slash_outline,
      IconButtonType.apple => Icons.apple,
      IconButtonType.gitHub => EvaIcons.github,
      IconButtonType.google => EvaIcons.google,
    };
  }
}

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    required IconButtonType icon,
    required VoidCallback onPressed,
    super.key,
    Color? iconColor,
    double? iconSize,
    double? buttonSize,
    Color? backgroundColor,
  })  : _icon = icon,
        _iconSize = iconSize,
        _iconColor = iconColor,
        _onPressed = onPressed,
        _buttonSize = buttonSize,
        _backgroundColor = backgroundColor;

  final IconButtonType _icon;
  final VoidCallback _onPressed;
  final double? _iconSize;
  final double? _buttonSize;
  final Color? _iconColor;
  final Color? _backgroundColor;

  factory IconButtonWidget.openEye({
    required VoidCallback onPressed,
    Color? iconColor,
    double? iconSize,
    double? buttonSize,
    Color? backgroundColor,
  }) {
    return IconButtonWidget(
      iconSize: iconSize,
      buttonSize: buttonSize,
      onPressed: onPressed,
      iconColor: iconColor,
      icon: IconButtonType.openEye,
      backgroundColor: backgroundColor,
    );
  }

  factory IconButtonWidget.closeEye({
    required VoidCallback onPressed,
    Color? iconColor,
    double? iconSize,
    double? buttonSize,
    Color? backgroundColor,
  }) {
    return IconButtonWidget(
      iconSize: iconSize,
      buttonSize: buttonSize,
      onPressed: onPressed,
      iconColor: iconColor,
      icon: IconButtonType.closeEye,
      backgroundColor: backgroundColor,
    );
  }

  factory IconButtonWidget.apple({
    required VoidCallback onPressed,
    Color? iconColor,
    double? iconSize,
    double? buttonSize,
    Color? backgroundColor,
  }) {
    return IconButtonWidget(
      iconSize: iconSize,
      buttonSize: buttonSize,
      onPressed: onPressed,
      iconColor: iconColor,
      icon: IconButtonType.apple,
      backgroundColor: backgroundColor,
    );
  }

  factory IconButtonWidget.gitHub({
    required VoidCallback onPressed,
    Color? iconColor,
    double? iconSize,
    double? buttonSize,
    Color? backgroundColor,
  }) {
    return IconButtonWidget(
      iconSize: iconSize,
      buttonSize: buttonSize,
      onPressed: onPressed,
      iconColor: iconColor,
      icon: IconButtonType.gitHub,
      backgroundColor: backgroundColor,
    );
  }

  factory IconButtonWidget.google({
    required VoidCallback onPressed,
    Color? iconColor,
    double? iconSize,
    double? buttonSize,
    Color? backgroundColor,
  }) {
    return IconButtonWidget(
      iconSize: iconSize,
      buttonSize: buttonSize,
      onPressed: onPressed,
      iconColor: iconColor ?? Colors.red,
      icon: IconButtonType.google,
      backgroundColor: backgroundColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: _onPressed,
      icon: Icon(_icon.getIcon, size: _iconSize),
      style: ButtonStyle(
        alignment: Alignment.center,
        iconColor: WidgetStateProperty.all(_iconColor),
        padding: WidgetStateProperty.all(EdgeInsets.zero),
        backgroundColor: WidgetStateProperty.all(_backgroundColor),
        fixedSize: _buttonSize == null
            ? null
            : WidgetStateProperty.all(Size.square(_buttonSize)),
      ),
    );
  }
}
