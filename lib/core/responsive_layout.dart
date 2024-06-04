import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.ultrawide,
    required this.wide,
    required this.narrow,
    required this.ultranarrow,
  });

  final Widget ultrawide;
  final Widget wide;
  final Widget narrow;
  final Widget ultranarrow;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        if (maxWidth > 1260) {
          return ultrawide;
        } else if (maxWidth > 900) {
          return wide;
        } else if (maxWidth > 500) {
          return narrow;
        } else {
          return ultranarrow;
        }
      },
    );
  }
}
