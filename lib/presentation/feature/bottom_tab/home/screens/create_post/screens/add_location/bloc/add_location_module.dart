import 'package:fbapp/injection/injector.dart';

import 'add_location_presenter.dart';

class AddLocationModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<AddLocationPresenter>(
      () => AddLocationPresenter(),
    );
  }
}
