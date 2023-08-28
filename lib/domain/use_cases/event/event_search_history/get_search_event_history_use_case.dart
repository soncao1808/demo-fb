import 'package:fbapp/domain/repositories/event_search_preferences_repository.dart';
import 'package:fbapp/domain/use_cases/use_case.dart';
import 'package:fbapp/injection/injector.dart';

class GetSearchEventHistoryUseCase implements OutputUseCase<List<String>> {
  @override
  List<String> run() => injector.get<EventSearchPreferencesRepository>().getSearchHistory();
}
