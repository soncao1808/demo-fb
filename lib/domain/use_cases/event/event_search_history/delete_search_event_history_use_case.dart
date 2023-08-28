import 'package:fbapp/domain/repositories/event_search_preferences_repository.dart';
import 'package:fbapp/injection/injector.dart';

class DeleteSearchEventHistoryUseCase {
  Future<void> run() =>
      injector.get<EventSearchPreferencesRepository>().deleteAllHistory();
}
