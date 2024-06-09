import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tec_notes_layout/common/common.dart';
import 'package:tec_notes_layout/features/auth/widgets/widgets.dart';

class MakeLoginSectionWidget extends StatefulWidget {
  const MakeLoginSectionWidget({
    required VoidCallback onLogin,
    required VoidCallback onRegister,
    required VoidCallback onForgotPassword,
    required Map<IconButtonType, void Function()> socialActions,
    super.key,
  })  : _onLogin = onLogin,
        _onRegister = onRegister,
        _socialActions = socialActions,
        _onForgotPassword = onForgotPassword;

  final VoidCallback _onLogin;
  final VoidCallback _onRegister;
  final VoidCallback _onForgotPassword;
  final Map<IconButtonType, void Function()> _socialActions;

  @override
  State<MakeLoginSectionWidget> createState() => _MakeLoginSectionWidgetState();
}

class _MakeLoginSectionWidgetState extends State<MakeLoginSectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 450),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: context.dimensions.paddingMedium),
          LoginFieldsWidget(
            onLogin: widget._onLogin,
            onForgotPassword: widget._onForgotPassword,
          ),
          SizedBox(height: context.dimensions.paddingSmall),
          LoginRegisterButtonsWidget(
            onRegister: widget._onRegister,
            socialActions: widget._socialActions,
          ),
        ],
      ),
    );
  }
}
