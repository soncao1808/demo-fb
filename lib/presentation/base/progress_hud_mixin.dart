import 'package:flutter/material.dart';

import '../../injection/injector.dart';
import '../../utilities/helpers/dialog_helper/loading_full_screen_helper.dart';
import '../widgets/progress_indicator_platform_widget.dart';

typedef BodyContentWidgetBuilder = Widget Function();

mixin ProgressHudMixin<T extends StatefulWidget> on State<T> {
  final LoadingFullScreenHelper _loadingFullScreenHelper =
      injector.get<LoadingFullScreenHelper>();

  bool _isShowingProgressHud = false;

  void showProgressHud() {
    if (!_isShowingProgressHud) {
      _isShowingProgressHud = true;
      _loadingFullScreenHelper.showLoadingFullScreen();
    }
  }

  void dismissProgressHud() {
    if (_isShowingProgressHud) {
      _loadingFullScreenHelper.closeLoadingFullScreen();
      _isShowingProgressHud = false;
    }
  }

  Widget buildBodyContent({required BodyContentWidgetBuilder builder}) => Stack(
        children: <Widget>[
          builder(),
          Visibility(
            visible: isShowingProgressHud,
            child: const AbsorbPointer(
              absorbing: true,
              child: Center(
                child: ProgressIndicatorPlatformWidget(),
              ),
            ),
          )
        ],
      );

  bool get isShowingProgressHud => false;
}
