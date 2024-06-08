import 'package:flutter/material.dart';
import 'package:tec_notes_layout/common/common.dart';
import 'package:tec_notes_layout/ui/ui.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required String label,
    required VoidCallback onPressed,
    super.key,
  })  : _label = label,
        _onPressed = onPressed;

  final String _label;
  final VoidCallback _onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _onPressed,
      style: ButtonStyle(
        fixedSize: WidgetStateProperty.all(const Size.fromWidth(180)),
        backgroundColor: WidgetStateProperty.all(context.colors.primary),
      ),
      child: TextWidget(
        _label,
        style: context.textTheme.titleSmall.copyWith(
          fontWeight: FontWeight.bold,
          color: context.colors.onPrimary,
        ),
      ),
    );
  }
}
