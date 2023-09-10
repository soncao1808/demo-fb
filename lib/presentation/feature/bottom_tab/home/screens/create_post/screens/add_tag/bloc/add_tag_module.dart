import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/bloc/create_post_presenter.dart';

import 'add_tag_presenter.dart';

class AddTagModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<AddTagPresenter>(
      () => AddTagPresenter(
        injector.get<CreatePostPresenter>(),
      ),
    );
  }
}
