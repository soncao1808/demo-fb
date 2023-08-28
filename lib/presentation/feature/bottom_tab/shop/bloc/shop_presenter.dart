// ignore_for_file: always_specify_types, dead_code

import 'package:fbapp/core/shared/session.dart';
import 'package:fbapp/domain/entities/user/info/response/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'shop_state.dart';

class ShopPresenter extends Cubit<ShopState> {
  ShopPresenter(
    this._session, {
    ShopState? state,
  }) : super(state ?? ShopState.initial());

  final Session _session;

  void init() async {
    setInfoUser(_session.user);
  }

  void setInfoUser(User? infoUser) {
    emit(state.copyWith(infoUser: infoUser));
  }

  void clearState() {
    emit(ShopState.initial());
  }

  Future<void> refreshData() async {}
}
