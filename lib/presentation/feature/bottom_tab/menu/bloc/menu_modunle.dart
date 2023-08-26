import '../../../../../injection/injector.dart';
import 'menu_presenter.dart';

class MenuModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<MenuPresenter>(
      () => MenuPresenter(),
    );
  }
}
