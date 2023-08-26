import '../../../../../../../injection/injector.dart';
import 'setting_notification_presenter.dart';

class SettingNotificationAccountModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<SettingNotificationAccountPresenter>(
      () => SettingNotificationAccountPresenter(),
    );
  }
}
