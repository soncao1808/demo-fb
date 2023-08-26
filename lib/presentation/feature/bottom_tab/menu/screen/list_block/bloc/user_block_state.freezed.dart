// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_block_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserBlockState {
  List<UserBlock> get listUser => throw _privateConstructorUsedError;
  bool get isListUsernLoading => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalPage => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserBlockStateCopyWith<UserBlockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBlockStateCopyWith<$Res> {
  factory $UserBlockStateCopyWith(
          UserBlockState value, $Res Function(UserBlockState) then) =
      _$UserBlockStateCopyWithImpl<$Res, UserBlockState>;
  @useResult
  $Res call(
      {List<UserBlock> listUser,
      bool isListUsernLoading,
      int pageSize,
      int totalPage,
      int page,
      bool status});
}

/// @nodoc
class _$UserBlockStateCopyWithImpl<$Res, $Val extends UserBlockState>
    implements $UserBlockStateCopyWith<$Res> {
  _$UserBlockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listUser = null,
    Object? isListUsernLoading = null,
    Object? pageSize = null,
    Object? totalPage = null,
    Object? page = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      listUser: null == listUser
          ? _value.listUser
          : listUser // ignore: cast_nullable_to_non_nullable
              as List<UserBlock>,
      isListUsernLoading: null == isListUsernLoading
          ? _value.isListUsernLoading
          : isListUsernLoading // ignore: cast_nullable_to_non_nullable
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserBlockStateCopyWith<$Res>
    implements $UserBlockStateCopyWith<$Res> {
  factory _$$_UserBlockStateCopyWith(
          _$_UserBlockState value, $Res Function(_$_UserBlockState) then) =
      __$$_UserBlockStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserBlock> listUser,
      bool isListUsernLoading,
      int pageSize,
      int totalPage,
      int page,
      bool status});
}

/// @nodoc
class __$$_UserBlockStateCopyWithImpl<$Res>
    extends _$UserBlockStateCopyWithImpl<$Res, _$_UserBlockState>
    implements _$$_UserBlockStateCopyWith<$Res> {
  __$$_UserBlockStateCopyWithImpl(
      _$_UserBlockState _value, $Res Function(_$_UserBlockState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listUser = null,
    Object? isListUsernLoading = null,
    Object? pageSize = null,
    Object? totalPage = null,
    Object? page = null,
    Object? status = null,
  }) {
    return _then(_$_UserBlockState(
      listUser: null == listUser
          ? _value._listUser
          : listUser // ignore: cast_nullable_to_non_nullable
              as List<UserBlock>,
      isListUsernLoading: null == isListUsernLoading
          ? _value.isListUsernLoading
          : isListUsernLoading // ignore: cast_nullable_to_non_nullable
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UserBlockState extends _UserBlockState {
  _$_UserBlockState(
      {required final List<UserBlock> listUser,
      required this.isListUsernLoading,
      required this.pageSize,
      required this.totalPage,
      required this.page,
      required this.status})
      : _listUser = listUser,
        super._();

  final List<UserBlock> _listUser;
  @override
  List<UserBlock> get listUser {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listUser);
  }

  @override
  final bool isListUsernLoading;
  @override
  final int pageSize;
  @override
  final int totalPage;
  @override
  final int page;
  @override
  final bool status;

  @override
  String toString() {
    return 'UserBlockState(listUser: $listUser, isListUsernLoading: $isListUsernLoading, pageSize: $pageSize, totalPage: $totalPage, page: $page, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserBlockState &&
            const DeepCollectionEquality().equals(other._listUser, _listUser) &&
            (identical(other.isListUsernLoading, isListUsernLoading) ||
                other.isListUsernLoading == isListUsernLoading) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listUser),
      isListUsernLoading,
      pageSize,
      totalPage,
      page,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserBlockStateCopyWith<_$_UserBlockState> get copyWith =>
      __$$_UserBlockStateCopyWithImpl<_$_UserBlockState>(this, _$identity);
}

abstract class _UserBlockState extends UserBlockState {
  factory _UserBlockState(
      {required final List<UserBlock> listUser,
      required final bool isListUsernLoading,
      required final int pageSize,
      required final int totalPage,
      required final int page,
      required final bool status}) = _$_UserBlockState;
  _UserBlockState._() : super._();

  @override
  List<UserBlock> get listUser;
  @override
  bool get isListUsernLoading;
  @override
  int get pageSize;
  @override
  int get totalPage;
  @override
  int get page;
  @override
  bool get status;
  @override
  @JsonKey(ignore: true)
  _$$_UserBlockStateCopyWith<_$_UserBlockState> get copyWith =>
      throw _privateConstructorUsedError;
}
