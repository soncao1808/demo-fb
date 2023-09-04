import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_post_history_state.freezed.dart';

enum SearchPostHistoryPageStatus {
  searchPostLoading,
  searchPostLoaded,
}

@freezed
class SearchPostHistoryState with _$SearchPostHistoryState {
  factory SearchPostHistoryState({
    required SearchPostHistoryPageStatus status,
    required List<String> listHistory,
    required String searchText,
  }) = _SearchPostHistoryState;

  const SearchPostHistoryState._();

  factory SearchPostHistoryState.initial() => SearchPostHistoryState(
        status: SearchPostHistoryPageStatus.searchPostLoaded,
        listHistory: <String>[],
        searchText: '',
      );
}
