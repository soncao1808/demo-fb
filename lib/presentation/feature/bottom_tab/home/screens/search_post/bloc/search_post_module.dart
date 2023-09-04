import 'package:fbapp/injection/injector.dart';

import 'search_post_presenter.dart';

class SearchPostModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<SearchPostPresenter>(
      () => SearchPostPresenter(),
    );
  }
}
