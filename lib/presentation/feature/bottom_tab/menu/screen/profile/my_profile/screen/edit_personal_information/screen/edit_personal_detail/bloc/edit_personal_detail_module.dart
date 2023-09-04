import 'package:fbapp/injection/injector.dart';

import 'edit_personal_detail_presenter.dart';

class EditPersonalDetailModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<EditPersonalDetailPresenter>(
      () => EditPersonalDetailPresenter(),
    );
  }
}
