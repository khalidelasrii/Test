import 'package:flutter/material.dart';

class ResponsiveMode extends StatelessWidget {
  const ResponsiveMode(
      {super.key,
      required this.disktopscafold,
      required this.mobilescafold,
      required this.tabletscafold});
  final Widget disktopscafold;
  final Widget tabletscafold;
  final Widget mobilescafold;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 510) {
        return mobilescafold;
      } else if (constraints.maxWidth < 900) {
        return tabletscafold;
      } else if (constraints.maxWidth >= 900) {
        return disktopscafold;
      }
      return const SizedBox();
    });
  }
}
