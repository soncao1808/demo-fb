import 'package:fbapp/data/models/event/event.dart';
import 'package:fbapp/domain/use_cases/event/event_search_history/add_search_event_history_use_case.dart';
import 'package:fbapp/domain/use_cases/event/event_search_history/delete_search_event_history_use_case.dart';
import 'package:fbapp/domain/use_cases/event/event_search_history/get_search_event_history_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'search_event_state.dart';

class SearchEventPresenter extends Cubit<SearchEventState> {
  SearchEventPresenter(
    this._getSearchEventHistory,
    this._addSearchEventHistory,
    this._deleteSearchEventHistory, {
    @visibleForTesting SearchEventState? state,
  }) : super(state ?? SearchEventState.initial());

  final GetSearchEventHistoryUseCase _getSearchEventHistory;
  final AddSearchEventHistoryUseCase _addSearchEventHistory;
  final DeleteSearchEventHistoryUseCase _deleteSearchEventHistory;

  void init() {
    getSearchEventHistory();
  }

  void getSearchEventHistory() {
    List<String> searchHistory =
        _getSearchEventHistory.run().reversed.toList().take(8).toList();

    emit(state.copyWith(searchHistory: searchHistory));
  }

  void onChangingSearchText({required bool onChanging, String? changingText}) {
    emit(state.copyWith(
      searchText: changingText ?? state.searchText,
      statusSearchInputting: onChanging,
    ));
  }

  void onSearchSummit(String text) {
    _addSearchEventHistory.run(text);
    emit(state.copyWith(statusSearchInputting: false));
    getEvents();
    getSearchEventHistory();
  }

  void onSelectSearchHistory(String text) {
    emit(state.copyWith(searchText: text, statusSearchInputting: false));
    getEvents();
  }

  void onDeleteSearchHistory() {
    _deleteSearchEventHistory.run();
    getSearchEventHistory();
  }

  void getEvents() {
    emit(state.copyWith(statusLoadingSearchEvent: true, statusHaveSearchResult: true));
    const List<Event> searchResult = <Event>[
      Event(
          id: 1,
          name: 'KHOÁ HỌC: BÌNH AN NỘI TÂM - SỨC MẠNH NỘI TÂM',
          time: 'THỨ SÁU TUẦN NÀY LÚC 18:00',
          location: 'Bình Thạnh, TP.HCM',
          careCount: 76,
          joinCount: 62),
      Event(
          id: 2,
          name: 'KHOÁ HỌC: BÌNH AN NỘI TÂM - SỨC MẠNH NỘI TÂM',
          time: 'THỨ SÁU TUẦN NÀY LÚC 19:00',
          location: 'Đà Nẵng, TP.HCM',
          careCount: 76,
          joinCount: 62),
      Event(
          id: 3,
          name: 'KHOÁ HỌC: BÌNH AN NỘI TÂM - SỨC MẠNH NỘI TÂM',
          time: 'THỨ SÁU TUẦN NÀY LÚC 20:00',
          location: 'Bình Thạnh, TP.HCM',
          careCount: 76,
          joinCount: 62),
      Event(
          id: 4,
          name: 'KHOÁ HỌC: BÌNH AN NỘI TÂM - SỨC MẠNH NỘI TÂM',
          time: 'THỨ SÁU TUẦN NÀY LÚC 21:00',
          location: 'Đà Nẵng, TP.HCM',
          careCount: 76,
          joinCount: 62),
      Event(
          id: 5,
          name: 'KHOÁ HỌC: BÌNH AN NỘI TÂM - SỨC MẠNH NỘI TÂM',
          time: 'THỨ SÁU TUẦN NÀY LÚC 22:00',
          location: 'Bình Thạnh, TP.HCM',
          careCount: 76,
          joinCount: 62),
    ];
    Future.delayed(const Duration(seconds: 1)).then((value) {
      emit(state.copyWith(
        searchResult: searchResult,
        statusLoadingSearchEvent: false,
      ));
    });
  }

  void onUpdateStatusCareEvent(int index) {
    List<Event> events = List<Event>.from(state.searchResult);

    events[index] = events[index].copyWith(newCare: !events[index].care);

    emit(state.copyWith(searchResult: events));
  }

  void resetState() {
    emit(SearchEventState.initial());
  }
}
