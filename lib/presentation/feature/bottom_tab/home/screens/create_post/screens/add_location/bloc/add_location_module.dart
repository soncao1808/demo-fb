import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/bloc/create_post_presenter.dart';

import 'add_location_presenter.dart';

class AddLocationModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<AddLocationPresenter>(
      () => AddLocationPresenter(
        injector.get<CreatePostPresenter>(),
      ),
    );
  }
}
