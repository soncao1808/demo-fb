// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fbapp/domain/entities/user/info/response/user.dart';

part 'notification_state.freezed.dart';

enum NotificationPageStatus {
  listBannerLoading,
  listBannerLoaded,
}

enum ModuleTypeCart {
  Service,
  PackService,
  PrepaidCard,
}

@freezed
class NotificationState with _$NotificationState {
  factory NotificationState({
    required NotificationPageStatus status,
    required User? infoUser,
  }) = _NotificationState;

  const NotificationState._();

  factory NotificationState.initial() => NotificationState(
        status: NotificationPageStatus.listBannerLoaded,
        infoUser: null,
      );
}
