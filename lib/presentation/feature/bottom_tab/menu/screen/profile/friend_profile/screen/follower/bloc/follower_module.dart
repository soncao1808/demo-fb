import 'package:fbapp/injection/injector.dart';

import 'follower_presenter.dart';

class FollowerModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<FollowerPresenter>(
      () => FollowerPresenter(),
    );
  }
}
