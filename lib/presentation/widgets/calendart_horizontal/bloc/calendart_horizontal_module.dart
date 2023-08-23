import 'package:fbapp/injection/injector.dart';

import 'calendart_horizontal_persenter.dart';

class CalendartHorizontalModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<CalendartHorizontalPersenter>(
      () => CalendartHorizontalPersenter(),
    );
  }
}
