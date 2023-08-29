import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/setting_notification/bloc/setting_notification_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingNotificationAccountPresenter
    extends Cubit<SettingNotificationState> {
  SettingNotificationAccountPresenter({
    @visibleForTesting SettingNotificationState? state,
  }) : super(state ?? SettingNotificationState.initial());

  void init() {
    //final Setting? setting = _session.user?.setting;
    // emit(state.copyWith(
    //   isPushNotification: setting?.notification ?? false,
    //   isNotificationSound: setting?.sound ?? false,
    // ));
  }

  void onSwitchPushNotication() async {
    if (state.status == NotiSettingStatus.statusUploadNotificationloading) {
      return;
    }
    try {
      emit(state.copyWith(
        status: NotiSettingStatus.statusUploadNotificationloading,
      ));

      // await _settingUseCase.run(SettingRequest(
      //   sound: state.isNotificationSound,
      //   notification: !state.isPushNotification,
      //   idUser: _session.user?.id as int,
      // ));

      //   _session.user = _session.user?.setNotification(!state.isPushNotification);
      emit(state.copyWith(
        isPushNotification: !state.isPushNotification,
        status: NotiSettingStatus.statusUploadNotificationloaded,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: NotiSettingStatus.statusUploadNotificationloaded,
      ));
    }
  }

  void onSwitchNotificationSound() async {
    if (state.status == NotiSettingStatus.statusUploadNotificationloading) {
      return;
    }
    try {
      emit(state.copyWith(
        status: NotiSettingStatus.statusUploadNotificationloading,
      ));

      // await _settingUseCase.run(SettingRequest(
      //   sound: !state.isNotificationSound,
      //   notification: state.isPushNotification,
      //   idUser: _session.user?.id as int,
      // ));
      // _session.user = _session.user?.setSound(!state.isNotificationSound);

      emit(state.copyWith(
        isNotificationSound: !state.isNotificationSound,
        status: NotiSettingStatus.statusUploadNotificationloaded,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: NotiSettingStatus.statusUploadNotificationloaded,
      ));
    }
  }
}
