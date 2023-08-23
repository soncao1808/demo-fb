import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartx/dartx.dart';
import 'package:fbapp/utilities/extensions/extensions.dart';
import 'package:fbapp/utilities/helpers/timer_helper/timer_helper.dart';

part 'calendart_horizontal_state.freezed.dart';

@freezed
class CalendartHorizontalState with _$CalendartHorizontalState {
  factory CalendartHorizontalState({
    required DateTime focusDate,
    required DateTime selectedDate,
  }) = _CalendartHorizontalState;

  const CalendartHorizontalState._();

  List<DateTime> get rangeDate => focusDate.firstDayOfWeek
      .subtract(const Duration(days: 1))
      .to(focusDate.lastDayOfWeek)
      .toList();
  String get rangeDateString =>
      '${focusDate.firstDayOfWeek.mmmd} - ${focusDate.lastDayOfWeek.mmmd}';

  factory CalendartHorizontalState.initial() => CalendartHorizontalState(
        focusDate: DateTime.now(),
        selectedDate: DateTime.now()
            .add(const Duration(days: 1))
            .ymd
            .convertStringToDateLocal,
      );
}
