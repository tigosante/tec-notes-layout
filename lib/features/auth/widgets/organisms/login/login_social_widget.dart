import 'package:flutter/material.dart';
import 'package:tec_notes_layout/common/common.dart';
import 'package:tec_notes_layout/features/auth/widgets/widgets.dart';
import 'package:tec_notes_layout/ui/ui.dart';

class LoginSocialWidget extends StatelessWidget {
  const LoginSocialWidget({
    required Map<IconButtonType, void Function()> actions,
    super.key,
  }) : _actions = actions;

  final Map<IconButtonType, void Function()> _actions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWidget(
          'Entrar com',
          style: context.textTheme.bodyLarge,
        ),
        SizedBox(height: context.dimensions.paddingMedium),
        SocialButtonsWidget(actions: _actions),
      ],
    );
  }
}
