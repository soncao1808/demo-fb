import 'package:fbapp/injection/injector.dart';

import 'my_profile_presenter.dart';

class MyProfileModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<MyProfilePresenter>(
      () => MyProfilePresenter(),
    );
  }
}
