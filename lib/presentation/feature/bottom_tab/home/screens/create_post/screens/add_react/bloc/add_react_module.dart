import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/bloc/create_post_presenter.dart';

import 'add_react_presenter.dart';

class AddReactModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<AddReactPresenter>(
      () => AddReactPresenter(
        injector.get<CreatePostPresenter>(),
      ),
    );
  }
}
