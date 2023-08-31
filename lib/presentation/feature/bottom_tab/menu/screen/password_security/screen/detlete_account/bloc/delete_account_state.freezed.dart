// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delete_account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeleteAcountState {
  bool get status => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  bool get isStatusLoadingdeleteAccount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteAcountStateCopyWith<DeleteAcountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAcountStateCopyWith<$Res> {
  factory $DeleteAcountStateCopyWith(
          DeleteAcountState value, $Res Function(DeleteAcountState) then) =
      _$DeleteAcountStateCopyWithImpl<$Res, DeleteAcountState>;
  @useResult
  $Res call({bool status, Object? error, bool isStatusLoadingdeleteAccount});
}

/// @nodoc
class _$DeleteAcountStateCopyWithImpl<$Res, $Val extends DeleteAcountState>
    implements $DeleteAcountStateCopyWith<$Res> {
  _$DeleteAcountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? isStatusLoadingdeleteAccount = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      isStatusLoadingdeleteAccount: null == isStatusLoadingdeleteAccount
          ? _value.isStatusLoadingdeleteAccount
          : isStatusLoadingdeleteAccount // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteAcountStateCopyWith<$Res>
    implements $DeleteAcountStateCopyWith<$Res> {
  factory _$$_DeleteAcountStateCopyWith(_$_DeleteAcountState value,
          $Res Function(_$_DeleteAcountState) then) =
      __$$_DeleteAcountStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, Object? error, bool isStatusLoadingdeleteAccount});
}

/// @nodoc
class __$$_DeleteAcountStateCopyWithImpl<$Res>
    extends _$DeleteAcountStateCopyWithImpl<$Res, _$_DeleteAcountState>
    implements _$$_DeleteAcountStateCopyWith<$Res> {
  __$$_DeleteAcountStateCopyWithImpl(
      _$_DeleteAcountState _value, $Res Function(_$_DeleteAcountState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? isStatusLoadingdeleteAccount = null,
  }) {
    return _then(_$_DeleteAcountState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      isStatusLoadingdeleteAccount: null == isStatusLoadingdeleteAccount
          ? _value.isStatusLoadingdeleteAccount
          : isStatusLoadingdeleteAccount // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DeleteAcountState extends _DeleteAcountState {
  _$_DeleteAcountState(
      {required this.status,
      required this.error,
      required this.isStatusLoadingdeleteAccount})
      : super._();

  @override
  final bool status;
  @override
  final Object? error;
  @override
  final bool isStatusLoadingdeleteAccount;

  @override
  String toString() {
    return 'DeleteAcountState(status: $status, error: $error, isStatusLoadingdeleteAccount: $isStatusLoadingdeleteAccount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteAcountState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.isStatusLoadingdeleteAccount,
                    isStatusLoadingdeleteAccount) ||
                other.isStatusLoadingdeleteAccount ==
                    isStatusLoadingdeleteAccount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(error), isStatusLoadingdeleteAccount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteAcountStateCopyWith<_$_DeleteAcountState> get copyWith =>
      __$$_DeleteAcountStateCopyWithImpl<_$_DeleteAcountState>(
          this, _$identity);
}

abstract class _DeleteAcountState extends DeleteAcountState {
  factory _DeleteAcountState(
      {required final bool status,
      required final Object? error,
      required final bool isStatusLoadingdeleteAccount}) = _$_DeleteAcountState;
  _DeleteAcountState._() : super._();

  @override
  bool get status;
  @override
  Object? get error;
  @override
  bool get isStatusLoadingdeleteAccount;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteAcountStateCopyWith<_$_DeleteAcountState> get copyWith =>
      throw _privateConstructorUsedError;
}
