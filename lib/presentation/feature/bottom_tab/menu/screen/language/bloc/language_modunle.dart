import '../../../../../../../injection/injector.dart';
import 'language_presenter.dart';

class LanguageModunle {
  static Future<void> inject() async {
    injector.registerLazySingleton<LanguagePresenter>(
      () => LanguagePresenter(),
    );
  }
}
