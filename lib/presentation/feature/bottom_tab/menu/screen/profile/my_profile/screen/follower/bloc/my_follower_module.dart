import 'package:fbapp/injection/injector.dart';

import 'my_follower_presenter.dart';

class MyFollowerModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<MyFollowerPresenter>(
      () => MyFollowerPresenter(),
    );
  }
}
