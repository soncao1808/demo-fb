import 'package:fbapp/injection/injector.dart';
import 'event_detail_presenter.dart';

class EventDetailModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<EventDetailPresenter>(
      () => EventDetailPresenter(),
    );
  }
}
