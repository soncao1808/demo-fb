// ignore_for_file: always_specify_types
import 'dart:convert';

import 'package:dartx/dartx.dart';
import 'package:fbapp/domain/repositories/event_search_preferences_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SearchPreferencesRepositoryImplement extends EventSearchPreferencesRepository {
  SearchPreferencesRepositoryImplement(this._preferences);

  static const String prefix = 'event';
  static const String _searchHistory = '${prefix}_search_history';

  final SharedPreferences _preferences;

  @override
  Future<void> addSearchHistory(String searchText) async {
    if (searchText.isNotNullOrBlank) {
      List<String> searchHistory = getSearchHistory();
      searchHistory.add(searchText);
      setSearchHistory(searchHistory);
    }
  }

  @override
  List<String> getSearchHistory() {
    String? jsonHistory = _preferences.getString(_searchHistory);
    if (jsonHistory == null) {
      List<String> emptyHistory = <String>[];
      setSearchHistory(emptyHistory);
      return emptyHistory;
    }
    List<String> searchHistory =
        List<String>.from(json.decode(jsonHistory));
    return searchHistory;
  }

  @override
  Future<void> setSearchHistory(List<String> searchHistory) async {
    String jsonString = json.encode(searchHistory);
    await _preferences.setString(_searchHistory, jsonString);
  }

  @override
  Future<void> deleteAllHistory() async {
    final List<String> history = [];
    String jsonString = json.encode(history);
    await _preferences.setString(_searchHistory, jsonString);
  }
}
