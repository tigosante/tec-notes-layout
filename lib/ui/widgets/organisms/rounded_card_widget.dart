import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tec_notes_layout/common/common.dart';

class RoundedCardWidget extends StatelessWidget {
  const RoundedCardWidget({
    required Widget child,
    super.key,
  }) : _child = child;

  final Widget _child;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      clipBehavior: Clip.antiAlias,
      constraints: const BoxConstraints(maxWidth: 600),
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(
          context.dimensions.borderRadiusLarge,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            spreadRadius: 0.5,
            offset: const Offset(1, 3),
            color: context.colors.black87.withOpacity(0.10),
          ),
        ],
      ),
      child: _child,
    );
  }
}
