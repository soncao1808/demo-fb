import 'package:fbapp/data/models/event/event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_event_state.freezed.dart';

@freezed
class MyEventState with _$MyEventState {
  factory MyEventState({
    required List<Event> events,
    required bool statusLoadingMyEvent,
  }) = _MyEventState;

  const MyEventState._();

  factory MyEventState.initial() => MyEventState(
        events: <Event>[],
        statusLoadingMyEvent: false,
      );
}
