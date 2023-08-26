import '../../../../../injection/injector.dart';
import 'notification_presenter.dart';

class NotificationModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<NotificationPresenter>(
      () => NotificationPresenter(),
    );
  }
}
