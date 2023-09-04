import 'package:fbapp/injection/injector.dart';

import 'edit_personal_job_presenter.dart';

class EditPersonalJobModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<EditPersonalJobPresenter>(
      () => EditPersonalJobPresenter(),
    );
  }
}
