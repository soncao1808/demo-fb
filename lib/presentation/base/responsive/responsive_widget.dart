import 'package:flutter/material.dart';

import '../../../utilities/constants/responsive_boundary.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    required this.mobile,
    required this.tablet,
    this.desktop,
    Key? key,
  }) : super(key: key);

  final Widget mobile;
  final Widget tablet;
  final Widget? desktop;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (desktop != null &&
              constraints.maxWidth >= ResponsiveBoundary.minDesktop) {
            return desktop!;
          } else if (constraints.maxWidth >= ResponsiveBoundary.minTablet) {
            return tablet;
          }
          return mobile;
        },
      );
}
