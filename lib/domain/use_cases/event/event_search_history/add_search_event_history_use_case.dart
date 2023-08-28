import 'package:fbapp/domain/repositories/event_search_preferences_repository.dart';
import 'package:fbapp/domain/use_cases/use_case.dart';
import 'package:fbapp/injection/injector.dart';

class AddSearchEventHistoryUseCase
    implements FutureUseCase<String, void> {
  @override
  Future<void> run(String searchText) =>
      injector.get<EventSearchPreferencesRepository>().addSearchHistory(searchText);
}
