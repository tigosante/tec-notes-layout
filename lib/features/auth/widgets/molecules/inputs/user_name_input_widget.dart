import 'package:flutter/material.dart';
import 'package:tec_notes_layout/features/auth/widgets/widgets.dart';

class UserNameInputWidget extends StatefulWidget {
  const UserNameInputWidget({
    super.key,
    void Function()? onEditingComplete,
  }) : _onEditingComplete = onEditingComplete;

  final void Function()? _onEditingComplete;

  @override
  State<UserNameInputWidget> createState() => _UserNameInputWidgetState();
}

class _UserNameInputWidgetState extends State<UserNameInputWidget> {
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
      labelText: 'Login',
      controller: _controller,
      onEditingComplete: widget._onEditingComplete,
    );
  }
}
