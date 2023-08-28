import 'package:fbapp/data/models/event/event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event_state.freezed.dart';

@freezed
class SearchEventState with _$SearchEventState {
  factory SearchEventState({
    required List<Event> searchResult,
    required List<String> searchHistory,
    required String searchText,
    required bool statusSearchInputting,
    required bool statusLoadingSearchEvent,
    required bool statusHaveSearchResult,
  }) = _SearchEventState;

  const SearchEventState._();

  factory SearchEventState.initial() => SearchEventState(
        searchResult: <Event>[],
        searchHistory: <String>[],
        searchText: '',
        statusLoadingSearchEvent: false,
        statusSearchInputting: true,
        statusHaveSearchResult: false,
      );
}
