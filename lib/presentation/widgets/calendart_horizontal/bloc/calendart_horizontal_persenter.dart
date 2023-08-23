import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/utilities/extensions/extensions.dart';
import 'package:fbapp/utilities/helpers/timer_helper/timer_helper.dart';

import 'calendart_horizontal_state.dart';

class CalendartHorizontalPersenter extends Cubit<CalendartHorizontalState> {
  CalendartHorizontalPersenter({
    @visibleForTesting CalendartHorizontalState? state,
  }) : super(state ?? CalendartHorizontalState.initial());

  void clearState() {
    emit(CalendartHorizontalState.initial());
  }

  DateTime currentDate = DateTime.now();

  void nextWeek() {
    DateTime focusDate = state.focusDate.add(const Duration(days: 7));

    emit(state.copyWith(
      focusDate: focusDate,
      selectedDate: focusDate.firstDayOfWeek,
    ));
  }

  void previewWeek() {
    DateTime focusDate = state.focusDate.subtract(const Duration(days: 7));
    if (focusDate.isAfter(currentDate)) {
      emit(state.copyWith(
        focusDate: currentDate.add(const Duration(days: 1)),
        selectedDate: currentDate
            .add(const Duration(days: 1))
            .ymd
            .convertStringToDateLocal,
      ));
      return;
    }
    emit(state.copyWith(
      focusDate: focusDate,
      selectedDate: focusDate.firstDayOfWeek,
    ));
  }

  void onSelectDateCalendar(DateTime date) {
    if (date.compareTo(state.selectedDate) == 0) return;
    if (date.isBefore(currentDate)) {
      return;
    }
    emit(state.copyWith(selectedDate: date));
  }

  bool isVisibility() {
    DateTime focusDate = state.focusDate.subtract(const Duration(days: 7));
    if (focusDate.isBefore(currentDate)) return true;
    return false;
  }
}
