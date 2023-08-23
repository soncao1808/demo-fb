import 'package:dio/dio.dart';

import '../dialog_helper/dialog_platform_helper.dart';

class ErrorHelper {
  bool _isShowing = false;
  ErrorHelper();

  void handleError(Object error) async {
    if (_isShowing) return;
    _isShowing = true;
    if (error is DioError) {
      await DialogPlatformHelper(
        title: "Message",
        content: error.response?.data["error"],
      ).show();
      _isShowing = false;
    } else if (error is Exception) {
      await DialogPlatformHelper(
        title: 'Message',
        content: error.toString(),
      ).show();
      _isShowing = false;
    } else {
      await DialogPlatformHelper(
        title: 'Message',
        content: error.toString(),
      ).show();
      _isShowing = false;
    }
  }
}
