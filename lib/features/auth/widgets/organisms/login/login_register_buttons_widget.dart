import 'package:flutter/material.dart';
import 'package:tec_notes_layout/common/common.dart';
import 'package:tec_notes_layout/features/auth/widgets/widgets.dart';
import 'package:tec_notes_layout/ui/ui.dart';

class LoginRegisterButtonsWidget extends StatelessWidget {
  const LoginRegisterButtonsWidget({
    required void Function() onRegister,
    required Map<IconButtonType, void Function()> socialActions,
    super.key,
  })  : _onRegister = onRegister,
        _socialActions = socialActions;

  final void Function() _onRegister;
  final Map<IconButtonType, void Function()> _socialActions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SecondaryButton(
          label: 'Registrar',
          onPressed: _onRegister,
        ),
        SizedBox(height: context.dimensions.paddingMedium),
        SocialButtonsWidget(actions: _socialActions),
      ],
    );
  }
}
