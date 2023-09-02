import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_presenter.dart';

import 'post_detail_presenter.dart';

class PostDetailModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<PostDetailPresenter>(
      () => PostDetailPresenter(
        injector.get<HomePresenter>(),
      ),
    );
  }
}
