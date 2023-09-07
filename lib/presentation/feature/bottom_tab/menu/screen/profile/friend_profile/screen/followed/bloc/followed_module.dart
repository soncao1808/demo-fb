import 'package:fbapp/injection/injector.dart';

import 'followed_presenter.dart';

class FollowedModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<FollowedPresenter>(
      () => FollowedPresenter(),
    );
  }
}
