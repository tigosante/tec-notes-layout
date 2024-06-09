import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tec_notes_layout/common/common.dart';
import 'package:tec_notes_layout/ui/ui.dart';

class UnderlineTextButtonWidget extends StatelessWidget {
  const UnderlineTextButtonWidget({
    required String label,
    required VoidCallback onTap,
    super.key,
  })  : _label = label,
        _onTap = onTap;

  final String _label;
  final VoidCallback _onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: TextWidget(
        _label,
        style: context.textTheme.bodyMedium.copyWith(
          color: context.colors.secondary.withOpacity(0.8),
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
