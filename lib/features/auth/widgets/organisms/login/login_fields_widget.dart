import 'package:flutter/material.dart';
import 'package:tec_notes_layout/common/common.dart';
import 'package:tec_notes_layout/features/auth/widgets/widgets.dart';

class LoginFieldsWidget extends StatelessWidget {
  const LoginFieldsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UserNameInputWidget(),
        SizedBox(height: context.dimensions.paddingLarge),
        const PasswordInputWidget(),
      ],
    );
  }
}
