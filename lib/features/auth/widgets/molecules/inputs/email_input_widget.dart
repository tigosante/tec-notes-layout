import 'package:flutter/material.dart';
import 'package:tec_notes_layout/features/auth/widgets/widgets.dart';

class EmailInputWidget extends StatefulWidget {
  const EmailInputWidget({
    required void Function() onEditingComplete,
    super.key,
  }) : _onEditingComplete = onEditingComplete;

  final void Function() _onEditingComplete;

  @override
  State<EmailInputWidget> createState() => _EmailInputWidgetState();
}

class _EmailInputWidgetState extends State<EmailInputWidget> {
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
      labelText: 'Email',
      obscureText: false,
      controller: _controller,
      keyboardType: TextInputType.emailAddress,
      onEditingComplete: widget._onEditingComplete,
    );
  }
}
