import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tec_notes_layout/common/extensions/extensions.dart';

class FloatingIconWidget extends StatefulWidget {
  const FloatingIconWidget({
    required List<Widget> children,
    super.key,
  }) : _children = children;

  final List<Widget> _children;

  @override
  State<FloatingIconWidget> createState() => _FloatingIconWidgetState();
}

class _FloatingIconWidgetState extends State<FloatingIconWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  final int _numchildren = kIsWeb ? 200 : 100;
  final Random _random = Random();
  final List<Animation<Offset>> _animations = [];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(minutes: 1),
    )..repeat();

    _animations.addAll(
      List.generate(_numchildren, (index) {
        return Tween<Offset>(
          begin: Offset(
            _random.nextDouble() * 2 - 1,
            _random.nextDouble() * 2 - 1,
          ),
          end: Offset(
            _random.nextDouble() * 2 - 1,
            _random.nextDouble() * 2 - 1,
          ),
        ).animate(CurvedAnimation(parent: _controller, curve: Curves.linear));
      }),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = context.appSize;
    return SizedBox(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Stack(
            alignment: Alignment.topCenter,
            children: List.generate(_numchildren, (index) {
              final animation = _animations[index];
              return Positioned(
                top: (size.height / 1.7) * (1 + animation.value.dy),
                right: (size.width / 1.5) * (1 + animation.value.dx),
                child: widget._children[index % widget._children.length],
              );
            }),
          );
        },
      ),
    );
  }
}
