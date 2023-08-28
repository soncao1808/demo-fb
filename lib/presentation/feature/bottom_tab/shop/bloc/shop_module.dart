import 'package:fbapp/core/shared/session.dart';
import 'package:fbapp/injection/injector.dart';

import 'shop_presenter.dart';

class ShopModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<ShopPresenter>(
      () => ShopPresenter(
        injector.get<Session>(),
      ),
    );
  }
}
