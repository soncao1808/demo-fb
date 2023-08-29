import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/language/bloc/language_presenter.dart';

class LanguageModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<LanguagePresenter>(
      () => LanguagePresenter(),
    );
  }
}
