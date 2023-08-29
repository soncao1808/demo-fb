import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/setting_notification/bloc/setting_notification_presenter.dart';

class SettingNotificationAccountModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<SettingNotificationAccountPresenter>(
      () => SettingNotificationAccountPresenter(),
    );
  }
}
