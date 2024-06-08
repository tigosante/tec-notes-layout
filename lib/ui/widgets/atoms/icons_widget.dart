import 'package:flutter/cupertino.dart';

enum IconType {
  favorite,
  favoriteFilled,
  remove,
  download,
  play,
  pause,
  playCircle,
  pauseCircle,
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

  factory IconsWidget.favorite({
    required Color colorIfFavorite,
    required Color colorIfNo,
    bool isFavorite = false,
  }) =>
      IconsWidget(
        color: isFavorite ? colorIfFavorite : colorIfNo,
        iconType: isFavorite ? IconType.favoriteFilled : IconType.favorite,
      );

  factory IconsWidget.remove({Color? color}) =>
      IconsWidget(iconType: IconType.remove, color: color);

  factory IconsWidget.download({Color? color}) =>
      IconsWidget(iconType: IconType.download, color: color);

  factory IconsWidget.play({Color? color}) =>
      IconsWidget(iconType: IconType.play, color: color);

  factory IconsWidget.pause({Color? color}) =>
      IconsWidget(iconType: IconType.pause, color: color);

  factory IconsWidget.playCircle({Color? color}) =>
      IconsWidget(iconType: IconType.playCircle, color: color);

  factory IconsWidget.pauseCircle({Color? color}) =>
      IconsWidget(iconType: IconType.pauseCircle, color: color);

  @override
  Widget build(BuildContext context) {
    return Icon(_iconType.iconData, color: _color);
  }
}

extension _IconTypeExtension on IconType {
  IconData get iconData {
    return switch (this) {
      IconType.favorite => CupertinoIcons.heart,
      IconType.favoriteFilled => CupertinoIcons.heart_fill,
      IconType.remove => CupertinoIcons.trash,
      IconType.download => CupertinoIcons.cloud_download,
      IconType.play => CupertinoIcons.play,
      IconType.pause => CupertinoIcons.pause,
      IconType.playCircle => CupertinoIcons.play_circle,
      IconType.pauseCircle => CupertinoIcons.pause_circle,
    };
  }
}
