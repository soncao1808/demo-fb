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
    required List<String> notifications,
    required bool isNotificationLoading,
    required int pageSize,
    required int totalPage,
    required int page,
    required String errorReadAllNotification,
    required bool isStatusPutReadAllNotification,
  }) = _NotificationState;

  const NotificationState._();

  factory NotificationState.initial() => NotificationState(
        status: NotificationPageStatus.listBannerLoaded,
        infoUser: null,
        notifications: <String>['', '', ''],
        isNotificationLoading: false,
        pageSize: 15,
        totalPage: 0,
        page: 1,
        errorReadAllNotification: '',
        isStatusPutReadAllNotification: false,
      );
}
