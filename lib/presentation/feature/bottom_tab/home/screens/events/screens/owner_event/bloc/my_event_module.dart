import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/owner_event/bloc/my_event_presenter.dart';

class MyEventModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<MyEventPresenter>(
      () => MyEventPresenter(),
    );
  }
}
