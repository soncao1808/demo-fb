import '../../../../../../../../../core/shared/session.dart';
import '../../../../../../../../../injection/injector.dart';
import 'detele_account_presenter.dart';

class DeletedAccountModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<DeletedAccountPresenter>(
      () => DeletedAccountPresenter(
        injector.get<Session>(),
      ),
    );
  }
}
