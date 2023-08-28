import 'package:fbapp/data/models/event/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_event_state.dart';

class MyEventPresenter extends Cubit<MyEventState> {
  MyEventPresenter({
    @visibleForTesting MyEventState? state,
  }) : super(state ?? MyEventState.initial());

  void init() {
    getMyEvents();
  }

  void getMyEvents() {
    emit(state.copyWith(statusLoadingMyEvent: true));
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
    Future.delayed(const Duration(seconds: 1)).then((value) {
      emit(state.copyWith(
        events: events,
        statusLoadingMyEvent: false,
      ));
    });
  }

  void onUpdateStatusCareEvent(int index) {
    List<Event> events = List<Event>.from(state.events);

    events[index] = events[index].copyWith(newCare: !events[index].care);

    emit(state.copyWith(events: events));
  }

  void resetState() {
    emit(MyEventState.initial());
  }
}
