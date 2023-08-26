import 'package:fbapp/domain/use_cases/user/resend_code_use_case.dart';
import 'package:fbapp/domain/use_cases/user/save_info_login_use_case.dart';
import 'package:fbapp/domain/use_cases/user/verify_code_use_case.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/utilities/helpers/app_helper/navigator_global_context_helper.dart';

import 'verification_code_presenter.dart';

class VerificationCodeModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<VerificationCodePresenter>(
      () => VerificationCodePresenter(
        injector.get<NavigatorGlobalContextHelper>(),
        injector.get<VerifyCodeUseCase>(),
        injector.get<ResendCodeUseCase>(),
        injector.get<SaveInfoLoginUseCase>(),
      ),
    );
  }
}
