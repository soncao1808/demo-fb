import 'package:flutter/material.dart';

class AppColors {
  const AppColors({
    //background
    required this.background,
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.backgroundThirdary,
    required this.backgroundInput,
    required this.backgroundGoldenrod,
    required this.backgroundPaleRose,
    required this.backgroundLinen,
    required this.backgroundIsLandSpice,
    required this.backgroundTara,
    required this.backgroundSolitude,

    //text
    required this.title,
    required this.label,
    required this.labelSecondary,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.textDisable,
    required this.textCerulean,
    required this.textGolden,
    required this.textLimeGreen,
    required this.textHarvestGold,
    required this.textLimeGreenStatus,
    required this.textCuriousBlue,

    //input
    required this.border,
    required this.borderInput,
    required this.borderInputCode,

    //common
    required this.error,
    required this.required,
    required this.mistyQuartz,
    required this.lightcCharcoal,
    required this.lightGray,
    required this.black,
    required this.lavenderPurple,
    required this.goldenrod,
    required this.fireEngineRed,
    required this.limeGreen,
    required this.gunmetal,
    required this.cornflowerBlue,
    required this.cloudGray,
    required this.creamy,
  });

  final Color background;
  final Color backgroundPrimary;
  final Color backgroundSecondary;
  final Color backgroundThirdary;
  final Color backgroundInput;
  final Color backgroundGoldenrod;
  final Color backgroundPaleRose;
  final Color backgroundLinen;
  final Color backgroundIsLandSpice;
  final Color backgroundTara;
  final Color backgroundSolitude;

  //text
  final Color label;
  final Color labelSecondary;
  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;
  final Color title;
  final Color textDisable;
  final Color textCerulean;
  final Color textGolden;
  final Color textLimeGreen;
  final Color textHarvestGold;
  final Color textLimeGreenStatus;
  final Color textCuriousBlue;

  //input
  final Color border;
  final Color borderInput;
  final Color borderInputCode;

  //common
  final Color error;
  final Color required;
  final Color mistyQuartz;
  final Color lightcCharcoal;
  final Color lightGray;
  final Color black;
  final Color lavenderPurple;
  final Color goldenrod;
  final Color fireEngineRed;
  final Color limeGreen;
  final Color gunmetal;
  final Color cornflowerBlue;
  final Color cloudGray;
  final Color creamy;
}

const AppColors colorsLight = AppColors(
  //background
  background: Color(0xFFF6F6F6),
  backgroundPrimary: Color(0xFFFA8787),
  backgroundSecondary: Color(0xFFFFFFFF),
  backgroundThirdary: Color(0xFFEAF6FB),
  backgroundInput: Color(0xFFFBFBFB),
  backgroundGoldenrod: Color(0xFFF4D462),
  backgroundPaleRose: Color(0xFFFFF3F3),
  backgroundLinen: Color(0xFFFBF8F0),
  textGolden: Color(0xFFFFC843),
  backgroundIsLandSpice: Color(0xFFFAEFDC),
  backgroundTara: Color(0xFFDCF6DA),
  backgroundSolitude: Color(0xFFE0ECFA),

  //text
  label: Color(0xFF211F20),
  labelSecondary: Color(0xFFFFFFFF),
  textPrimary: Color(0xFF878687),
  textSecondary: Color(0xFFE41D1D),
  textTertiary: Color(0xFFFA8787),
  title: Color(0xFF211F20),
  textDisable: Color(0xFFA2A2A2),
  textCerulean: Color(0xFF28A2D4),
  textLimeGreen: Color(0xFF11AF22),
  textHarvestGold: Color(0xFFF1C267),
  textLimeGreenStatus: Color(0xFF3BC92F),
  textCuriousBlue: Color(0xFF3B82D6),

  //input
  border: Color(0xFFE2E2E2),
  borderInput: Color(0xFFE2E2E2),
  borderInputCode: Color(0xFFF6F6F6),

  //common
  error: Color(0xFFF21D1D),
  required: Color(0xFFF21D1D),
  mistyQuartz: Color(0xFFC8C7C7),
  lightcCharcoal: Color(0xFFC8C7C7),
  lightGray: Color(0xFFCCCCCC),
  black: Color(0xFF000000),
  lavenderPurple: Color(0xFFB476F2),
  goldenrod: Color(0xFFF1C267),
  fireEngineRed: Color(0xFFE33535),
  limeGreen: Color(0xFF3BC92F),
  gunmetal: Color(0xFF878687),
  cornflowerBlue: Color(0xFF3B82D6),
  cloudGray: Color(0xFFEDEDED),
  creamy: Color(0xFFFDF8E7),
);

const AppColors colorsDark = AppColors(
  background: Color(0xFFF6F6F6),
  backgroundPrimary: Color(0xFFFA8787),
  backgroundSecondary: Color(0xFFFFFFFF),
  backgroundThirdary: Color(0xFFEAF6FB),
  backgroundInput: Color(0xFFFBFBFB),
  backgroundGoldenrod: Color(0xFFF4D462),
  backgroundPaleRose: Color(0xFFFFF3F3),
  backgroundLinen: Color(0xFFFBF8F0),
  textGolden: Color(0xFFFFC843),
  textLimeGreen: Color(0xFF11AF22),
  backgroundIsLandSpice: Color(0xFFFAEFDC),
  backgroundTara: Color(0xFFDCF6DA),
  backgroundSolitude: Color(0xFFE0ECFA),

  //text
  label: Color(0xFF211F20),
  labelSecondary: Color(0xFFFFFFFF),
  textPrimary: Color(0xFF878687),
  textSecondary: Color(0xFFE41D1D),
  textTertiary: Color(0xFFFA8787),
  title: Color(0xFF211F20),
  textDisable: Color(0xFFA2A2A2),
  textCerulean: Color(0xFF28A2D4),
  textHarvestGold: Color(0xFFF1C267),
  textLimeGreenStatus: Color(0xFF3BC92F),
  textCuriousBlue: Color(0xFF3B82D6),

  //input
  border: Color(0xFFE8EAEC),
  borderInput: Color(0xFFE2E2E2),
  borderInputCode: Color(0xFFF6F6F6),

  //common
  error: Color(0xFFF21D1D),
  required: Color(0xFFF21D1D),
  mistyQuartz: Color(0xFFC8C7C7),
  lightcCharcoal: Color(0xFFC8C7C7),
  lightGray: Color(0xFFCCCCCC),
  black: Color(0xFF000000),
  lavenderPurple: Color(0xFFB476F2),
  goldenrod: Color(0xFFF1C267),
  fireEngineRed: Color(0xFFE33535),
  limeGreen: Color(0xFF3BC92F),
  gunmetal: Color(0xFF878687),
  cornflowerBlue: Color(0xFF3B82D6),
  cloudGray: Color(0xFFEDEDED),
  creamy: Color(0xFFFDF8E7),
);

extension AppColorsExtension on BuildContext {
  AppColors get colors {
    final Brightness brightness = Theme.of(this).brightness;
    switch (brightness) {
      case Brightness.light:
        return colorsLight;
      case Brightness.dark:
        return colorsDark;
    }
  }
}
