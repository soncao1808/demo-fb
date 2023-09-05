import 'package:fbapp/injection/injector.dart';

import 'friend_information_presenter.dart';

class FriendInformationModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<FriendInformationPresenter>(
      () => FriendInformationPresenter(),
    );
  }
}
