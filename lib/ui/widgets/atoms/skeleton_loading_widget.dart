import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:tec_notes_layout/common/common.dart' show BuildContextExtension;

class SkeletonLoadingWidget extends StatelessWidget {
  const SkeletonLoadingWidget({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      textBoneBorderRadius: TextBoneBorderRadius(
        BorderRadius.all(Radius.circular(context.dimensions.paddingSmall)),
      ),
      effect: PulseEffect(
        duration: const Duration(milliseconds: 500),
        to: context.colors.secondary.withOpacity(0.1),
        from: context.colors.primary.withOpacity(0.15),
      ),
      child: child,
    );
  }
}
