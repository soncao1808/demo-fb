import 'package:flutter/material.dart';

import '../../../injection/injector.dart';
import '../../../presentation/widgets/progress_indicator_platform_widget.dart';
import '../app_helper/navigator_global_context_helper.dart';

class LoadingFullScreenHelper {
  final NavigatorGlobalContextHelper _navigationService =
      injector.get<NavigatorGlobalContextHelper>();

  void showLoadingFullScreen({
    bool barrierDismissible = true,
    bool isUnLockWillPop = false,
  }) =>
      showDialog(
        barrierDismissible: barrierDismissible,
        context: _navigationService.getCurrentContext,
        builder: (BuildContext context) => WillPopScope(
          onWillPop: () async => isUnLockWillPop,
          child: const ProgressIndicatorPlatformWidget(),
        ),
      );

  void closeLoadingFullScreen() =>
      Navigator.of(_navigationService.getCurrentContext).pop();
}
