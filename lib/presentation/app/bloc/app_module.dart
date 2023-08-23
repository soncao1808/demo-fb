import 'package:fbapp/domain/use_cases/user/get_locale_use_case.dart';
import 'package:fbapp/domain/use_cases/user/save_locale_use_case.dart';
import 'package:fbapp/injection/injector.dart';

import 'app_presenter.dart';

class AppModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<AppPresenter>(
      () => AppPresenter(
        injector.get<SaveLocaleUseCase>(),
        injector.get<GetLocaleUseCase>(),
      ),
    );
  }
}
