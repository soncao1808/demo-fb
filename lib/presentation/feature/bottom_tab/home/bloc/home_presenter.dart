// ignore_for_file: always_specify_types, dead_code

import 'package:fbapp/core/shared/session.dart';
import 'package:fbapp/domain/entities/user/info/response/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomePresenter extends Cubit<HomeState> {
  HomePresenter(
    this._session, {
    HomeState? state,
  }) : super(state ?? HomeState.initial());

  final Session _session;

  void init() async {
    setInfoUser(_session.user);
  }

  void setInfoUser(User? infoUser) {
    emit(state.copyWith(infoUser: infoUser));
  }

  void clearState() {
    emit(HomeState.initial());
  }

  Future<void> refreshData() async {}
}
