import 'package:fbapp/core/shared/session.dart';
import 'package:fbapp/injection/injector.dart';

import 'notification_presenter.dart';

class NotificationModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<NotificationPresenter>(
      () => NotificationPresenter(
        injector.get<Session>(),
      ),
    );
  }
}
