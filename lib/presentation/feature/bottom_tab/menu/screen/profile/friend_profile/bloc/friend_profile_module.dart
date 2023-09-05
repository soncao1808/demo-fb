import 'package:fbapp/injection/injector.dart';

import 'friend_profile_presenter.dart';

class FriendProfileModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<FriendProfilePresenter>(
      () => FriendProfilePresenter(),
    );
  }
}
