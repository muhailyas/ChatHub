import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  const Responsive({super.key, required this.desktop, required this.mobile});

  // For mobile
  static isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;
  // For desktop
  static isDeskTop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 900;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // If the width is more than or equal to 900, display desktop layout
        if (constraints.maxWidth >= 900) {
          return desktop;
        }
        // Otherwise, display mobile layout
        return mobile;
      },
    );
  }
}
