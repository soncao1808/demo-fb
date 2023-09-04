import 'package:fbapp/injection/injector.dart';

import 'edit_personal_contact_presenter.dart';

class EditPersonalContactModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<EditPersonalContactPresenter>(
      () => EditPersonalContactPresenter(),
    );
  }
}
