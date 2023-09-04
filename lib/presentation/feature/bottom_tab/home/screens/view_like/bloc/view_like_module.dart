import 'package:fbapp/injection/injector.dart';

import 'view_like_presenter.dart';

class ViewLikeModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<ViewLikePresenter>(
      () => ViewLikePresenter(),
    );
  }
}
