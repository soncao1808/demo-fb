import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/list_block/bloc/user_block_presenter.dart';

class UserBlockModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<UserBlockPresenter>(
      () => UserBlockPresenter(),
    );
  }
}
