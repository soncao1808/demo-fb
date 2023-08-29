// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationState {
  NotificationPageStatus get status => throw _privateConstructorUsedError;
  User? get infoUser => throw _privateConstructorUsedError;
  List<String> get notifications => throw _privateConstructorUsedError;
  bool get isNotificationLoading => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalPage => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get errorReadAllNotification => throw _privateConstructorUsedError;
  bool get isStatusPutReadAllNotification => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
  @useResult
  $Res call(
      {NotificationPageStatus status,
      User? infoUser,
      List<String> notifications,
      bool isNotificationLoading,
      int pageSize,
      int totalPage,
      int page,
      String errorReadAllNotification,
      bool isStatusPutReadAllNotification});

  $UserCopyWith<$Res>? get infoUser;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? infoUser = freezed,
    Object? notifications = null,
    Object? isNotificationLoading = null,
    Object? pageSize = null,
    Object? totalPage = null,
    Object? page = null,
    Object? errorReadAllNotification = null,
    Object? isStatusPutReadAllNotification = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotificationPageStatus,
      infoUser: freezed == infoUser
          ? _value.infoUser
          : infoUser // ignore: cast_nullable_to_non_nullable
              as User?,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isNotificationLoading: null == isNotificationLoading
          ? _value.isNotificationLoading
          : isNotificationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      errorReadAllNotification: null == errorReadAllNotification
          ? _value.errorReadAllNotification
          : errorReadAllNotification // ignore: cast_nullable_to_non_nullable
              as String,
      isStatusPutReadAllNotification: null == isStatusPutReadAllNotification
          ? _value.isStatusPutReadAllNotification
          : isStatusPutReadAllNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get infoUser {
    if (_value.infoUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.infoUser!, (value) {
      return _then(_value.copyWith(infoUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NotificationStateCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$_NotificationStateCopyWith(_$_NotificationState value,
          $Res Function(_$_NotificationState) then) =
      __$$_NotificationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NotificationPageStatus status,
      User? infoUser,
      List<String> notifications,
      bool isNotificationLoading,
      int pageSize,
      int totalPage,
      int page,
      String errorReadAllNotification,
      bool isStatusPutReadAllNotification});

  @override
  $UserCopyWith<$Res>? get infoUser;
}

/// @nodoc
class __$$_NotificationStateCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$_NotificationState>
    implements _$$_NotificationStateCopyWith<$Res> {
  __$$_NotificationStateCopyWithImpl(
      _$_NotificationState _value, $Res Function(_$_NotificationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? infoUser = freezed,
    Object? notifications = null,
    Object? isNotificationLoading = null,
    Object? pageSize = null,
    Object? totalPage = null,
    Object? page = null,
    Object? errorReadAllNotification = null,
    Object? isStatusPutReadAllNotification = null,
  }) {
    return _then(_$_NotificationState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotificationPageStatus,
      infoUser: freezed == infoUser
          ? _value.infoUser
          : infoUser // ignore: cast_nullable_to_non_nullable
              as User?,
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isNotificationLoading: null == isNotificationLoading
          ? _value.isNotificationLoading
          : isNotificationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      errorReadAllNotification: null == errorReadAllNotification
          ? _value.errorReadAllNotification
          : errorReadAllNotification // ignore: cast_nullable_to_non_nullable
              as String,
      isStatusPutReadAllNotification: null == isStatusPutReadAllNotification
          ? _value.isStatusPutReadAllNotification
          : isStatusPutReadAllNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NotificationState extends _NotificationState {
  _$_NotificationState(
      {required this.status,
      required this.infoUser,
      required final List<String> notifications,
      required this.isNotificationLoading,
      required this.pageSize,
      required this.totalPage,
      required this.page,
      required this.errorReadAllNotification,
      required this.isStatusPutReadAllNotification})
      : _notifications = notifications,
        super._();

  @override
  final NotificationPageStatus status;
  @override
  final User? infoUser;
  final List<String> _notifications;
  @override
  List<String> get notifications {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  final bool isNotificationLoading;
  @override
  final int pageSize;
  @override
  final int totalPage;
  @override
  final int page;
  @override
  final String errorReadAllNotification;
  @override
  final bool isStatusPutReadAllNotification;

  @override
  String toString() {
    return 'NotificationState(status: $status, infoUser: $infoUser, notifications: $notifications, isNotificationLoading: $isNotificationLoading, pageSize: $pageSize, totalPage: $totalPage, page: $page, errorReadAllNotification: $errorReadAllNotification, isStatusPutReadAllNotification: $isStatusPutReadAllNotification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.infoUser, infoUser) ||
                other.infoUser == infoUser) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.isNotificationLoading, isNotificationLoading) ||
                other.isNotificationLoading == isNotificationLoading) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(
                    other.errorReadAllNotification, errorReadAllNotification) ||
                other.errorReadAllNotification == errorReadAllNotification) &&
            (identical(other.isStatusPutReadAllNotification,
                    isStatusPutReadAllNotification) ||
                other.isStatusPutReadAllNotification ==
                    isStatusPutReadAllNotification));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      infoUser,
      const DeepCollectionEquality().hash(_notifications),
      isNotificationLoading,
      pageSize,
      totalPage,
      page,
      errorReadAllNotification,
      isStatusPutReadAllNotification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationStateCopyWith<_$_NotificationState> get copyWith =>
      __$$_NotificationStateCopyWithImpl<_$_NotificationState>(
          this, _$identity);
}

abstract class _NotificationState extends NotificationState {
  factory _NotificationState(
          {required final NotificationPageStatus status,
          required final User? infoUser,
          required final List<String> notifications,
          required final bool isNotificationLoading,
          required final int pageSize,
          required final int totalPage,
          required final int page,
          required final String errorReadAllNotification,
          required final bool isStatusPutReadAllNotification}) =
      _$_NotificationState;
  _NotificationState._() : super._();

  @override
  NotificationPageStatus get status;
  @override
  User? get infoUser;
  @override
  List<String> get notifications;
  @override
  bool get isNotificationLoading;
  @override
  int get pageSize;
  @override
  int get totalPage;
  @override
  int get page;
  @override
  String get errorReadAllNotification;
  @override
  bool get isStatusPutReadAllNotification;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationStateCopyWith<_$_NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
