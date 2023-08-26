import '../../../../../../../../../core/shared/session.dart';
import '../../../../../../../../../domain/use_cases/user/change_password_use_case.dart';
import '../../../../../../../../../injection/injector.dart';
import 'change_password_presenter.dart';

class ChangePasswordAccountModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<ChangePasswordAccountPresenter>(
      () => ChangePasswordAccountPresenter(
        injector.get<Session>(),
        injector.get<ChangePasswordUserUseCase>(),
      ),
    );
  }
}
