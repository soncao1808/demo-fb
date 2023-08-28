
abstract class EventSearchPreferencesRepository {
  Future<void> setSearchHistory(List<String> searchHistory);

  Future<void> addSearchHistory(String searchText);

  List<String> getSearchHistory();

  Future<void> deleteAllHistory();
}
