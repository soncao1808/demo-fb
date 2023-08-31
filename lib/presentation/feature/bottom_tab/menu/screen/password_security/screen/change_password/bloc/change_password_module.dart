import 'package:fbapp/core/shared/session.dart';
import 'package:fbapp/domain/use_cases/user/change_password_use_case.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/change_password/bloc/change_password_presenter.dart';

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
