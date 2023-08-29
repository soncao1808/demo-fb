import 'package:fbapp/core/shared/session.dart';
import 'package:fbapp/domain/entities/user/info/response/user.dart';
import 'package:fbapp/presentation/feature/bottom_tab/notification/bloc/notification_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationPresenter extends Cubit<NotificationState> {
  NotificationPresenter(
    this._session, {
    NotificationState? state,
  }) : super(state ?? NotificationState.initial());

  final Session _session;

  void init() async {
    setInfoUser(_session.user);
  }

  void setInfoUser(User? infoUser) {
    emit(state.copyWith(infoUser: infoUser));
  }

  void clearState() {
    emit(NotificationState.initial());
  }

  Future<void> refreshData() async {}
}
