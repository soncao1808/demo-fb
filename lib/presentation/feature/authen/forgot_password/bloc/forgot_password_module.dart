import 'package:fbapp/domain/use_cases/user/resend_code_use_case.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/utilities/helpers/app_helper/navigator_global_context_helper.dart';

import 'forgot_password_presenter.dart';

class ForgotPasswordModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<ForgotPasswordPresenter>(
      () => ForgotPasswordPresenter(
        injector.get<ResendCodeUseCase>(),
        injector.get<NavigatorGlobalContextHelper>(),
      ),
    );
  }
}
