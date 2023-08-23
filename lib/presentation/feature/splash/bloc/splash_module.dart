import 'package:fbapp/core/shared/session.dart';
import 'package:fbapp/domain/use_cases/user/get_info_user_use_case.dart';
import 'package:fbapp/injection/injector.dart';

import './splash_presenter.dart';

class SplashModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<SplashPresenter>(
      () => SplashPresenter(
        injector.get<Session>(),
        injector.get<GetInfoUserUseCase>(),
      ),
    );
  }
}
