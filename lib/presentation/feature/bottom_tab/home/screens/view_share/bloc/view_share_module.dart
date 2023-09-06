import 'package:fbapp/injection/injector.dart';

import 'view_share_presenter.dart';

class ViewShareModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<ViewSharePresenter>(
      () => ViewSharePresenter(),
    );
  }
}
