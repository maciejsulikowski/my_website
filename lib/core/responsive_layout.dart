import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.ultrawide,
    required this.wide,
    required this.narrow,
  });

  final Widget ultrawide;
  final Widget wide;
  final Widget narrow;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        if (maxWidth > 1260) {
          return ultrawide;
        } else if (maxWidth > 900) {
          return wide;
        } else {
          return narrow;
        }
      },
    );
  }
}
