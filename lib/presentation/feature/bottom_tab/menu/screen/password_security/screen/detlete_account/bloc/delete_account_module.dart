import 'package:fbapp/core/shared/session.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/detlete_account/bloc/detele_account_presenter.dart';

class DeletedAccountModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<DeletedAccountPresenter>(
      () => DeletedAccountPresenter(
        injector.get<Session>(),
      ),
    );
  }
}
