import '../../../../../../../injection/injector.dart';
import 'events_presenter.dart';

class EventsModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<EventsPresenter>(
      () => EventsPresenter(),
    );
  }
}
