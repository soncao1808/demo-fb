import 'package:fbapp/domain/use_cases/user/clear_auth_preferences_use_case.dart';
import 'package:fbapp/domain/use_cases/user/logout_use_case.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/utilities/helpers/app_helper/scaffold_global_context_helper.dart';

import 'menu_presenter.dart';

class MenuModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<MenuPresenter>(
      () => MenuPresenter(
        injector.get<ScaffoldGlobalContextHelper>(),
        injector.get<ClearAuthPreferencesUseCase>(),
        injector.get<LogoutUseCase>(),
      ),
    );
  }
}
