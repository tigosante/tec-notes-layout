import 'package:flutter/cupertino.dart';

enum IconType {
  pen,
  paper,
}

class IconsWidget extends StatelessWidget {
  const IconsWidget({
    required IconType iconType,
    super.key,
    Color? color,
  })  : _color = color,
        _iconType = iconType;

  final IconType _iconType;
  final Color? _color;

  factory IconsWidget.pen({Color? color}) =>
      IconsWidget(iconType: IconType.pen, color: color);

  factory IconsWidget.paper({Color? color}) =>
      IconsWidget(iconType: IconType.paper, color: color);

  @override
  Widget build(BuildContext context) {
    return Icon(_iconType.iconData, color: _color);
  }
}

extension _IconTypeExtension on IconType {
  IconData get iconData {
    return switch (this) {
      IconType.pen => CupertinoIcons.pen,
      IconType.paper => CupertinoIcons.square_list,
    };
  }
}
