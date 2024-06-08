import 'package:flutter/material.dart';
import 'package:tec_notes_layout/common/common.dart';

class BodyDefault extends StatelessWidget {
  const BodyDefault({
    required Widget child,
    EdgeInsets? copyWith,
    super.key,
  })  : _child = child,
        _copyWith = copyWith;

  final Widget _child;
  final EdgeInsets? _copyWith;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: _copyWith?.top ?? 0,
        left: _copyWith?.left.value ?? context.dimensions.paddingMedium,
        right: _copyWith?.right.value ?? context.dimensions.paddingMedium,
        bottom: _copyWith?.bottom ?? 0,
      ),
      child: _child,
    );
  }
}

extension on double? {
  double? get value => this == 0.0 ? null : this;
}
