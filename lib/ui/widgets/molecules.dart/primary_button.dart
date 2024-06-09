import 'package:flutter/foundation.dart';
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
        elevation: WidgetStateProperty.all(0),
        padding: WidgetStateProperty.all(EdgeInsets.zero),
        backgroundColor: WidgetStateProperty.all(context.colors.secondary),
        minimumSize: WidgetStateProperty.all(
          kIsWeb ? const Size(350, 55) : const Size(double.infinity, 45),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              context.dimensions.borderRadiusMedium,
            ),
          ),
        ),
      ),
      child: TextWidget(
        _label,
        style: context.textTheme.labelLarge.copyWith(
          color: context.colors.onPrimary,
        ),
      ),
    );
  }
}
