import 'package:fbapp/injection/injector.dart';

import 'edit_personal_story_presenter.dart';

class EditPersonalStoryModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<EditPersonalStoryPresenter>(
      () => EditPersonalStoryPresenter(),
    );
  }
}
