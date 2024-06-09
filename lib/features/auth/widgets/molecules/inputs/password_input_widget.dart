import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tec_notes_layout/features/auth/widgets/widgets.dart';

class PasswordInputWidget extends StatefulWidget {
  const PasswordInputWidget({
    required void Function(String text) onEditingComplete,
    super.key,
  }) : _onEditingComplete = onEditingComplete;

  final void Function(String text) _onEditingComplete;

  @override
  State<PasswordInputWidget> createState() => _PasswordInputWidgetState();
}

class _PasswordInputWidgetState extends State<PasswordInputWidget> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseInputWidget(
      labelText: 'Senha',
      obscureText: true,
      controller: _controller,
      keyboardType: TextInputType.visiblePassword,
      onEditingComplete: () => widget._onEditingComplete(_controller.text),
    );
  }
}
