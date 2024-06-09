import 'package:flutter/material.dart';
import 'package:tec_notes_layout/common/common.dart';
import 'package:tec_notes_layout/features/auth/widgets/widgets.dart';

class SocialButtonsWidget extends StatelessWidget {
  const SocialButtonsWidget({
    required Map<IconButtonType, VoidCallback> actions,
    super.key,
  }) : _actions = actions;

  final Map<IconButtonType, VoidCallback> _actions;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: _actions.entries
          .map(
            (entry) => Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.dimensions.paddingMedium,
              ),
              child: IconButtonWidget(
                buttonSize: 30,
                icon: entry.key,
                onPressed: entry.value,
                iconSize: entry.key.iconSize,
                iconColor: context.colors.secondary,
                backgroundColor: context.colors.primary.withOpacity(0.2),
              ),
            ),
          )
          .toList(),
    );
  }
}

extension on IconButtonType {
  double get iconSize {
    return switch (this) { IconButtonType.apple => 25, _ => 20 };
  }
}
