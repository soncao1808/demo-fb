import 'package:fbapp/data/models/event/event.dart';
import 'package:fbapp/data/models/event/event_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'events_state.dart';

class EventsPresenter extends Cubit<EventsState> {
  EventsPresenter({
    @visibleForTesting EventsState? state,
  }) : super(state ?? EventsState.initial());

  void init() {
    getEventCategory();
  }

  void getEventCategory() {
    const List<EventCategory> eventCategory = <EventCategory>[
      EventCategory(id: 1, name: 'Hàng đầu'),
      EventCategory(id: 2, name: 'Địa phương'),
      EventCategory(id: 3, name: 'Tuần này'),
      EventCategory(id: 4, name: 'Online'),
    ];

    emit(state.copyWith(listEventCategory: eventCategory, selectedCategory: eventCategory.first));

    getEvents();
  }

  void onSelectCategory(EventCategory selectedItem) {
    emit(state.copyWith(selectedCategory: selectedItem));
  }

  void getEvents() {
    const List<Event> events = <Event>[
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

    emit(state.copyWith(listEvents: events));
  }

  void onUpdateStatusCareEvent(int index) {
    List<Event> events = List<Event>.from(state.listEvents);

    events[index] = events[index].copyWith(
      newCare: !events[index].care
    );

    emit(state.copyWith(listEvents: events));
  }

  void onUpdateStatusJoinEvent(int index) {
    List<Event> events = List<Event>.from(state.listEvents);

    events[index] = events[index].copyWith(
        newJoin: !events[index].join
    );

    emit(state.copyWith(listEvents: events));
  }

  void resetState() {
    emit(EventsState.initial());
  }
}
