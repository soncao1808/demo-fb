import 'package:fbapp/injection/injector.dart';

import 'my_followed_presenter.dart';

class MyFollowedModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<MyFollowedPresenter>(
      () => MyFollowedPresenter(),
    );
  }
}
