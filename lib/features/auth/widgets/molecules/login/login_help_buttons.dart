import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tec_notes_layout/common/common.dart';
import 'package:tec_notes_layout/ui/ui.dart';

class LoginHelpButtons extends StatelessWidget {
  const LoginHelpButtons({
    required VoidCallback onHelp,
    required VoidCallback onForgotPassword,
    super.key,
  })  : _onHelp = onHelp,
        _onForgotPassword = onForgotPassword;

  final VoidCallback _onHelp;
  final VoidCallback _onForgotPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: _onForgotPassword,
          child: TextWidget(
            'Esqueceu a senha?',
            style: context.textTheme.bodyLarge.copyWith(
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        SizedBox(height: context.dimensions.paddingSmall),
        GestureDetector(
          onTap: _onHelp,
          child: TextWidget(
            'Ajuda',
            style: context.textTheme.bodyLarge.copyWith(
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
