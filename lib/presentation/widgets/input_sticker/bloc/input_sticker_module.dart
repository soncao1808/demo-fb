import 'package:fbapp/injection/injector.dart';

import 'input_sticker_persenter.dart';

class InputStickerModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<InputStickerPersenter>(
      () => InputStickerPersenter(),
    );
  }
}
