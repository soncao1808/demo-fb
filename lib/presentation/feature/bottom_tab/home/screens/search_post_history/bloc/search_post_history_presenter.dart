import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'search_post_history_state.dart';

class SearchPostHistoryPresenter extends Cubit<SearchPostHistoryState> {
  SearchPostHistoryPresenter({
    @visibleForTesting SearchPostHistoryState? state,
  }) : super(state ?? SearchPostHistoryState.initial());

  void init() {
    emit(state.copyWith(
      listHistory: <String>[
        "search 1",
        "search 2",
        "search 3",
      ],
    ));
  }

  void resetState() {
    emit(SearchPostHistoryState.initial());
  }

  void onChangingSearchText({required bool onChanging, String? changingText}) {
    emit(state.copyWith(
      searchText: changingText ?? state.searchText,
      status: SearchPostHistoryPageStatus.searchPostLoading,
    ));
  }
}
