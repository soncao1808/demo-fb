import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fbapp/utilities/helpers/load_more/base_load_more_page_mixin.dart';
import 'package:loadmore/loadmore.dart';

import '../injection/dependencies.dart';
import '../presentation/app/app.dart';
import '../utilities/helpers/app_helper/app_flavor_helper.dart';

Future<void> mainCommon(AppFlavor flavor) async {
  void configImageCached() {
    PaintingBinding.instance.imageCache.maximumSizeBytes = 0;
    PaintingBinding.instance.imageCache.maximumSizeBytes = 1000 << 20;
  }

  WidgetsFlutterBinding.ensureInitialized();
  await DependencyManager.inject(flavor);
  await flavor.setup();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  configImageCached();
  LoadMore.buildDelegate = () => BaseLoadMorePage();

  runApp(DevicePreview(
    enabled: kIsWeb & !kReleaseMode,
    builder: (BuildContext context) => const App(),
  ));
}
