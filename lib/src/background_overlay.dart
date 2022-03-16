library flutter_boom_menu;

import 'package:flutter/material.dart';

class BackgroundOverlay extends AnimatedWidget {
  final Color color;
  final double opacity;

  const BackgroundOverlay({
    Key? key,
    required Animation<double> animation,
    this.color = Colors.white,
    this.opacity = 0.8,
  }) : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    return Container(
      color: color.withOpacity(animation.value * opacity),
    );
  }
}