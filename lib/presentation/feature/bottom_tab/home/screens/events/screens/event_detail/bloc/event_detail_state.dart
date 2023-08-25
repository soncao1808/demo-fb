import 'package:fbapp/data/models/event/event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_detail_state.freezed.dart';

@freezed
class EventDetailState with _$EventDetailState {
  factory EventDetailState({
    required Event event
  }) = _EventDetailState;

  const EventDetailState._();

  factory EventDetailState.initial() => EventDetailState(
        event: const Event(),
      );
}
