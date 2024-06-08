import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tec_notes_layout/common/common.dart';
import 'package:tec_notes_layout/features/auth/widgets/widgets.dart';

class LoginActionButtonsWidget extends StatelessWidget {
  const LoginActionButtonsWidget({
    required VoidCallback onLogin,
    required VoidCallback onRegister,
    super.key,
  })  : _onLogin = onLogin,
        _onRegister = onRegister;

  final VoidCallback _onLogin;
  final VoidCallback _onRegister;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PrimaryButton(
          label: 'Entrar',
          onPressed: _onLogin,
        ),
        SizedBox(height: context.dimensions.paddingMedium),
        PrimaryButton(
          label: 'Cadastrar',
          onPressed: _onRegister,
        ),
      ],
    );
  }
}
