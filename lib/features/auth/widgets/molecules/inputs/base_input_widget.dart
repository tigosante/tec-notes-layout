import 'package:flutter/material.dart';
import 'package:tec_notes_layout/common/common.dart';
import 'package:tec_notes_layout/features/auth/widgets/widgets.dart';

class BaseInputWidget extends StatefulWidget {
  const BaseInputWidget({
    required String labelText,
    required TextEditingController controller,
    bool obscureText = false,
    void Function()? onEditingComplete,
    super.key,
  })  : _labelText = labelText,
        _controller = controller,
        _obscureText = obscureText,
        _onEditingComplete = onEditingComplete;

  final String _labelText;
  final bool _obscureText;
  final TextEditingController _controller;
  final void Function()? _onEditingComplete;

  @override
  State<BaseInputWidget> createState() => _BaseInputWidgetState();
}

class _BaseInputWidgetState extends State<BaseInputWidget> {
  bool _showText = true;

  bool get _isHiddenText {
    if (widget._obscureText) {
      return _showText;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    const fontWeight = FontWeight.bold;
    final textTheme = context.textTheme;

    return TextField(
      obscureText: _isHiddenText,
      controller: widget._controller,
      onEditingComplete: widget._onEditingComplete,
      style: textTheme.bodyMedium
          .copyWith(fontWeight: fontWeight, color: context.colors.secondary),
      decoration: InputDecoration(
        labelText: widget._labelText,
        labelStyle: textTheme.titleSmall.copyWith(fontWeight: fontWeight),
        suffixIcon: _SuffixIconButtonWidget(
          showText: _showText,
          obscureText: widget._obscureText,
          onPressed: () => setState(() => _showText = !_showText),
        ),
      ),
    );
  }
}

class _SuffixIconButtonWidget extends StatelessWidget {
  const _SuffixIconButtonWidget({
    required bool showText,
    required bool obscureText,
    required VoidCallback onPressed,
  })  : _showText = showText,
        _onPressed = onPressed,
        _obscureText = obscureText;

  final bool _showText;
  final bool _obscureText;
  final VoidCallback _onPressed;

  @override
  Widget build(BuildContext context) {
    if (!_obscureText) {
      return const SizedBox();
    }

    return switch (_showText) {
      true => IconButtonWidget.openEye,
      false => IconButtonWidget.closeEye,
    }(onPressed: _onPressed);
  }
}
