import 'package:fbapp/data/models/event/event.dart';
import 'package:fbapp/data/models/event/event_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'events_state.freezed.dart';

@freezed
class EventsState with _$EventsState {
  factory EventsState({
    required List<Event> listEvents,
    required List<EventCategory> listEventCategory,
    EventCategory? selectedCategory,
  }) = _EventsState;

  const EventsState._();

  factory EventsState.initial() => EventsState(
        listEvents: <Event>[],
        listEventCategory: <EventCategory>[],
        selectedCategory: null,
      );
}
