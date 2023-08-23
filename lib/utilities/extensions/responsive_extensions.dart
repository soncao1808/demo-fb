import 'package:flutter/material.dart';

import '../constants/responsive_boundary.dart';

extension CheckTypeResponsiveExtensions on BuildContext {
  bool get isMobile =>
      MediaQuery.of(this).size.width < ResponsiveBoundary.minTablet;

  bool get isTablet =>
      MediaQuery.of(this).size.width >= ResponsiveBoundary.minTablet &&
      MediaQuery.of(this).size.width < ResponsiveBoundary.minDesktop;

  bool get isDesktop =>
      MediaQuery.of(this).size.width >= ResponsiveBoundary.minDesktop;

  bool get isLandscape =>
      MediaQuery.of(this).orientation == Orientation.landscape;

  bool get isPortrait =>
      MediaQuery.of(this).orientation == Orientation.portrait;
}

extension SizeExtensions on num {
  double screenUtil(
    BuildContext context, {
    required double tablet,
    double? desktop,
  }) {
    if (desktop != null && context.isDesktop) {
      return desktop;
    } else if (context.isTablet) {
      return tablet;
    }
    return toDouble();
  }
}
