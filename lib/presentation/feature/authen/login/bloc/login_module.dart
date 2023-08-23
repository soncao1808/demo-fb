import 'package:fbapp/core/shared/session.dart';
import 'package:fbapp/domain/use_cases/user/clear_auth_preferences_use_case.dart';
import 'package:fbapp/domain/use_cases/user/get_info_user_use_case.dart';
import 'package:fbapp/domain/use_cases/user/login_use_case.dart';
import 'package:fbapp/domain/use_cases/user/save_access_token_use_case.dart';
import 'package:fbapp/injection/injector.dart';

import './login_presenter.dart';

class LoginModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<LoginPresenter>(
      () => LoginPresenter(
        injector.get<LoginUseCase>(),
        injector.get<SaveAccessTokenUseCase>(),
        injector.get<GetInfoUserUseCase>(),
        injector.get<Session>(),
        injector.get<ClearAuthPreferencesUseCase>(),
      ),
    );
  }
}
