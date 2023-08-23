// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_fonts.dart';

ThemeData getAppTheme(Brightness brightness) {
  final AppColors colors =
      brightness == Brightness.light ? colorsLight : colorsDark;

  return ThemeData(
    brightness: brightness,
    fontFamily: AppFonts.lato,
    scaffoldBackgroundColor: colors.background,
    appBarTheme: AppBarTheme(brightness: brightness),
  );
}
