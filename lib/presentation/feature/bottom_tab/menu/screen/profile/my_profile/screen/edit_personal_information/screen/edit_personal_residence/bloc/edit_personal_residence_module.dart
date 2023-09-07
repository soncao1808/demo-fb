import 'package:fbapp/injection/injector.dart';

import 'edit_personal_residence_presenter.dart';

class EditPersonalResidenceModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<EditPersonalResidencePresenter>(
      () => EditPersonalResidencePresenter(),
    );
  }
}
