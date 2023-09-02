import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_notification_state.freezed.dart';

enum NotiSettingStatus {
  statusUploadNotificationloading,
  statusUploadNotificationloaded,
  statusUploadNotificationfailed,
}

@freezed
class SettingNotificationState with _$SettingNotificationState {
  factory SettingNotificationState({
    required bool isPushNotification,
    required bool isNotificationSound,
    required NotiSettingStatus status,
  }) = _SettingNotificationState;

  const SettingNotificationState._();

  factory SettingNotificationState.initial() => SettingNotificationState(
        isPushNotification: true,
        isNotificationSound: true,
        status: NotiSettingStatus.statusUploadNotificationloaded,
      );
}
