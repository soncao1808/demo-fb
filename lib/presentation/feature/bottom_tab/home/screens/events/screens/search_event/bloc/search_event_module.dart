import 'package:fbapp/domain/use_cases/event/event_search_history/add_search_event_history_use_case.dart';
import 'package:fbapp/domain/use_cases/event/event_search_history/delete_search_event_history_use_case.dart';
import 'package:fbapp/domain/use_cases/event/event_search_history/get_search_event_history_use_case.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/search_event/bloc/search_event_presenter.dart';

class SearchEventModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<SearchEventPresenter>(
      () => SearchEventPresenter(
        injector.get<GetSearchEventHistoryUseCase>(),
        injector.get<AddSearchEventHistoryUseCase>(),
        injector.get<DeleteSearchEventHistoryUseCase>(),
      ),
    );
  }
}
