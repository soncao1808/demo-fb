import 'package:fbapp/injection/injector.dart';

import 'edit_personal_information_presenter.dart';

class EditPersonalInformationModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<EditPersonalInformationPresenter>(
      () => EditPersonalInformationPresenter(),
    );
  }
}
