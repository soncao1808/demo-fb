// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reset_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResetPasswordState {
  NewPasswordFieldResetPassword get newPassword =>
      throw _privateConstructorUsedError;
  RepeatPasswordFieldResetPassword get repeatPassword =>
      throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  bool get isStatusNewPassword => throw _privateConstructorUsedError;
  bool get isStatusRepeatPassword => throw _privateConstructorUsedError;
  bool get isLoadingResetPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordStateCopyWith<ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) then) =
      _$ResetPasswordStateCopyWithImpl<$Res, ResetPasswordState>;
  @useResult
  $Res call(
      {NewPasswordFieldResetPassword newPassword,
      RepeatPasswordFieldResetPassword repeatPassword,
      FormzStatus status,
      Object? error,
      bool isStatusNewPassword,
      bool isStatusRepeatPassword,
      bool isLoadingResetPassword});
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res, $Val extends ResetPasswordState>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPassword = null,
    Object? repeatPassword = null,
    Object? status = null,
    Object? error = freezed,
    Object? isStatusNewPassword = null,
    Object? isStatusRepeatPassword = null,
    Object? isLoadingResetPassword = null,
  }) {
    return _then(_value.copyWith(
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as NewPasswordFieldResetPassword,
      repeatPassword: null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as RepeatPasswordFieldResetPassword,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      error: freezed == error ? _value.error : error,
      isStatusNewPassword: null == isStatusNewPassword
          ? _value.isStatusNewPassword
          : isStatusNewPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isStatusRepeatPassword: null == isStatusRepeatPassword
          ? _value.isStatusRepeatPassword
          : isStatusRepeatPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingResetPassword: null == isLoadingResetPassword
          ? _value.isLoadingResetPassword
          : isLoadingResetPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResetPasswordStateCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$$_ResetPasswordStateCopyWith(_$_ResetPasswordState value,
          $Res Function(_$_ResetPasswordState) then) =
      __$$_ResetPasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NewPasswordFieldResetPassword newPassword,
      RepeatPasswordFieldResetPassword repeatPassword,
      FormzStatus status,
      Object? error,
      bool isStatusNewPassword,
      bool isStatusRepeatPassword,
      bool isLoadingResetPassword});
}

/// @nodoc
class __$$_ResetPasswordStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res, _$_ResetPasswordState>
    implements _$$_ResetPasswordStateCopyWith<$Res> {
  __$$_ResetPasswordStateCopyWithImpl(
      _$_ResetPasswordState _value, $Res Function(_$_ResetPasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPassword = null,
    Object? repeatPassword = null,
    Object? status = null,
    Object? error = freezed,
    Object? isStatusNewPassword = null,
    Object? isStatusRepeatPassword = null,
    Object? isLoadingResetPassword = null,
  }) {
    return _then(_$_ResetPasswordState(
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as NewPasswordFieldResetPassword,
      repeatPassword: null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as RepeatPasswordFieldResetPassword,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      error: freezed == error ? _value.error : error,
      isStatusNewPassword: null == isStatusNewPassword
          ? _value.isStatusNewPassword
          : isStatusNewPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isStatusRepeatPassword: null == isStatusRepeatPassword
          ? _value.isStatusRepeatPassword
          : isStatusRepeatPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingResetPassword: null == isLoadingResetPassword
          ? _value.isLoadingResetPassword
          : isLoadingResetPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ResetPasswordState extends _ResetPasswordState {
  _$_ResetPasswordState(
      {required this.newPassword,
      required this.repeatPassword,
      required this.status,
      this.error,
      required this.isStatusNewPassword,
      required this.isStatusRepeatPassword,
      required this.isLoadingResetPassword})
      : super._();

  @override
  final NewPasswordFieldResetPassword newPassword;
  @override
  final RepeatPasswordFieldResetPassword repeatPassword;
  @override
  final FormzStatus status;
  @override
  final Object? error;
  @override
  final bool isStatusNewPassword;
  @override
  final bool isStatusRepeatPassword;
  @override
  final bool isLoadingResetPassword;

  @override
  String toString() {
    return 'ResetPasswordState(newPassword: $newPassword, repeatPassword: $repeatPassword, status: $status, error: $error, isStatusNewPassword: $isStatusNewPassword, isStatusRepeatPassword: $isStatusRepeatPassword, isLoadingResetPassword: $isLoadingResetPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPasswordState &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.repeatPassword, repeatPassword) ||
                other.repeatPassword == repeatPassword) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.isStatusNewPassword, isStatusNewPassword) ||
                other.isStatusNewPassword == isStatusNewPassword) &&
            (identical(other.isStatusRepeatPassword, isStatusRepeatPassword) ||
                other.isStatusRepeatPassword == isStatusRepeatPassword) &&
            (identical(other.isLoadingResetPassword, isLoadingResetPassword) ||
                other.isLoadingResetPassword == isLoadingResetPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      newPassword,
      repeatPassword,
      status,
      const DeepCollectionEquality().hash(error),
      isStatusNewPassword,
      isStatusRepeatPassword,
      isLoadingResetPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetPasswordStateCopyWith<_$_ResetPasswordState> get copyWith =>
      __$$_ResetPasswordStateCopyWithImpl<_$_ResetPasswordState>(
          this, _$identity);
}

abstract class _ResetPasswordState extends ResetPasswordState {
  factory _ResetPasswordState(
      {required final NewPasswordFieldResetPassword newPassword,
      required final RepeatPasswordFieldResetPassword repeatPassword,
      required final FormzStatus status,
      final Object? error,
      required final bool isStatusNewPassword,
      required final bool isStatusRepeatPassword,
      required final bool isLoadingResetPassword}) = _$_ResetPasswordState;
  _ResetPasswordState._() : super._();

  @override
  NewPasswordFieldResetPassword get newPassword;
  @override
  RepeatPasswordFieldResetPassword get repeatPassword;
  @override
  FormzStatus get status;
  @override
  Object? get error;
  @override
  bool get isStatusNewPassword;
  @override
  bool get isStatusRepeatPassword;
  @override
  bool get isLoadingResetPassword;
  @override
  @JsonKey(ignore: true)
  _$$_ResetPasswordStateCopyWith<_$_ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
