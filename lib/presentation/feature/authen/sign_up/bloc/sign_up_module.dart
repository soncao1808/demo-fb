import 'package:fbapp/domain/use_cases/user/sign_up_use_case.dart';
import 'package:fbapp/injection/injector.dart';

import 'sign_up_presenter.dart';

class SignUpModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<SignUpPresenter>(
      () => SignUpPresenter(
        injector.get<SignUpUseCase>(),
      ),
    );
  }
}
