import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_presenter.dart';

class MainPageModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<MainPagePresenter>(
      () => MainPagePresenter(),
    );
  }
}
