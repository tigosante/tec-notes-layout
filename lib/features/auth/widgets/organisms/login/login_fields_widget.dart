import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tec_notes_layout/common/common.dart';
import 'package:tec_notes_layout/features/auth/widgets/widgets.dart';
import 'package:tec_notes_layout/ui/ui.dart';

class LoginFieldsWidget extends StatelessWidget {
  const LoginFieldsWidget({
    required VoidCallback onLogin,
    required VoidCallback onForgotPassword,
    super.key,
  })  : _onLogin = onLogin,
        _onForgotPassword = onForgotPassword;

  final VoidCallback _onLogin;
  final VoidCallback _onForgotPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserNameInputWidget(onEditingComplete: debugPrint),
        SizedBox(height: context.dimensions.paddingSmall),
        PasswordInputWidget(onEditingComplete: debugPrint),
        SizedBox(height: context.dimensions.paddingSmall),
        Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.symmetric(
            horizontal: context.dimensions.paddingMedium,
          ),
          child: UnderlineTextButtonWidget(
            label: 'Esqueceu a senha?',
            onTap: _onForgotPassword,
          ),
        ),
        SizedBox(height: context.dimensions.paddingMedium),
        PrimaryButton(
          label: 'Entrar',
          onPressed: _onLogin,
        ),
      ],
    );
  }
}
