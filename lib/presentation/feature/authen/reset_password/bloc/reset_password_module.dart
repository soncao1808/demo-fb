import 'package:fbapp/domain/use_cases/user/reset_password_use_case.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/utilities/helpers/app_helper/navigator_global_context_helper.dart';

import 'reset_password_presenter.dart';

class ResetPasswordModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<ResetPasswordPresenter>(
      () => ResetPasswordPresenter(
        injector.get<ResetPasswordUseCase>(),
        injector.get<NavigatorGlobalContextHelper>(),
      ),
    );
  }
}
