// import 'package:package_info_plus/package_info_plus.dart';
import 'dart:io';

import 'package:android_id/android_id.dart';
import 'package:device_info_plus/device_info_plus.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import '../../../injection/injector.dart';
import 'navigator_global_context_helper.dart';

class DeviceInfoHelper {
  DeviceInfoPlugin get deviceInfo => DeviceInfoPlugin();

  String get platform {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return 'android';
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return 'ios';
    } else {
      return 'web';
    }
  }

  Brightness get colorBrightness {
    return DeviceInfoHelper().isAndroid ? Brightness.light : Brightness.dark;
  }

  bool get isIos {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return false;
    }
    return true;
  }

  bool get isAndroid {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return true;
    }
    return false;
  }

  Future<String?> get deviceId async {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return await const AndroidId().getId();
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return (await deviceInfo.iosInfo).identifierForVendor;
    }
    return null;
  }

  Future<String?> get platformVersion async {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return (await deviceInfo.androidInfo).version.release;
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return (await deviceInfo.iosInfo).systemVersion;
    }
    return 'unknown';
  }

  // Future<String> get appVersion async => PackageInfo.fromPlatform()
  //     .then((packageInfo) => packageInfo.version
  //         .replaceAll('-production', '')
  //         .replaceAll('-staging', '')
  //         .replaceAll('-development', ''))
  //     .onError((error, stackTrace) => '0.0.0');

  Future<String?> get device async {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return (await deviceInfo.androidInfo).model;
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return (await deviceInfo.iosInfo).utsname.machine;
    }
    return 'unknown';
  }

  Future<bool> isTablet() async {
    if (Platform.isIOS) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;

      return iosInfo.model!.toLowerCase() == "ipad";
    } else {
      // The equivalent of the "smallestWidth" qualifier on Android.
      final BuildContext context =
          injector.get<NavigatorGlobalContextHelper>().getCurrentContext;
      double shortestSide = MediaQuery.of(context).size.shortestSide;

      // Determine if we should use mobile layout or not, 600 here is
      // a common breakpoint for a typical 7-inch tablet.
      return shortestSide > 600;
    }
  }

  Future<IosDeviceInfo> readIosInfo() async {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    IosDeviceInfo data = await deviceInfoPlugin.iosInfo;
    return data;
  }

  Map<String, dynamic> readIosDeviceInfo(IosDeviceInfo data) {
    return <String, dynamic>{
      'name': data.name,
      'systemName': data.systemName,
      'systemVersion': data.systemVersion,
      'model': data.model,
      'localizedModel': data.localizedModel,
      'identifierForVendor': data.identifierForVendor,
      'isPhysicalDevice': data.isPhysicalDevice,
      'utsname.sysname:': data.utsname.sysname,
      'utsname.nodename:': data.utsname.nodename,
      'utsname.release:': data.utsname.release,
      'utsname.version:': data.utsname.version,
      'utsname.machine:': data.utsname.machine,
    };
  }
}
