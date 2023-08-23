import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/utilities/helpers/app_helper/device_info_helper.dart';

AppBar appBarCustom(Color? backgroundColor) {
  return AppBar(
    primary: true,
    toolbarHeight: 0,
    elevation: 0,
    backgroundColor: backgroundColor ?? context.colors.backgroundSecondary,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: backgroundColor ?? context.colors.backgroundSecondary,
      statusBarIconBrightness:
          DeviceInfoHelper().isAndroid ? Brightness.dark : Brightness.light,
      statusBarBrightness:
          DeviceInfoHelper().isAndroid ? Brightness.dark : Brightness.light,
    ),
  );
}
