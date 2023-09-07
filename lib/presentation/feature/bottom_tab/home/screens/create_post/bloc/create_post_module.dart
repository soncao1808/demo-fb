import 'package:fbapp/injection/injector.dart';

import 'create_post_presenter.dart';

class CreatePostModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<CreatePostPresenter>(
      () => CreatePostPresenter(),
    );
  }
}
