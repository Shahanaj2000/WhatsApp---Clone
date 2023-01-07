import 'package:flutter/material.dart';

class ResponsiveLayOut extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreeLayout;
  const ResponsiveLayOut({
    super.key,
    required this.mobileScreenLayout,
    required this.webScreeLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          //WEB SCREEN
          return webScreeLayout;

        } else {
          //MOBILE SCREEN
          return mobileScreenLayout;
        }
      },
    );
  }
}