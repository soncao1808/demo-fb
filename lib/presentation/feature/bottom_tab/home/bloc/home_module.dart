import 'package:fbapp/core/shared/session.dart';
import 'package:fbapp/injection/injector.dart';

import 'home_presenter.dart';

class HomeModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<HomePresenter>(
      () => HomePresenter(
        injector.get<Session>(),
      ),
    );
  }
}
