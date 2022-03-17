import 'package:flutter/material.dart';

/// Provides data for a speed dial child
class ExpandableFabMenuItem {
  final Widget child;
  final Color backgroundColor;
  final double? elevation;
  final VoidCallback onTap;
  final String title;
  final String subtitle;
  final Color? titleColor;
  final Color? subTitleColor;

  ExpandableFabMenuItem(
      {required this.child,
      required this.title,
      required this.subtitle,
      required this.backgroundColor,
      this.elevation,
      required this.onTap,
      this.titleColor,
      this.subTitleColor});
}
