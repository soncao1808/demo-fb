import 'package:fbapp/injection/injector.dart';

import 'search_post_history_presenter.dart';

class SearchPostHistoryModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<SearchPostHistoryPresenter>(
      () => SearchPostHistoryPresenter(),
    );
  }
}
