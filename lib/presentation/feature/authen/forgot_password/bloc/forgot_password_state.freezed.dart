// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordState {
  Phone get phone => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  bool get isLoadingForgotPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
  @useResult
  $Res call(
      {Phone phone,
      FormzStatus status,
      Object? error,
      bool isLoadingForgotPassword});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? status = null,
    Object? error = freezed,
    Object? isLoadingForgotPassword = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      error: freezed == error ? _value.error : error,
      isLoadingForgotPassword: null == isLoadingForgotPassword
          ? _value.isLoadingForgotPassword
          : isLoadingForgotPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForgotPasswordStateCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$$_ForgotPasswordStateCopyWith(_$_ForgotPasswordState value,
          $Res Function(_$_ForgotPasswordState) then) =
      __$$_ForgotPasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Phone phone,
      FormzStatus status,
      Object? error,
      bool isLoadingForgotPassword});
}

/// @nodoc
class __$$_ForgotPasswordStateCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$_ForgotPasswordState>
    implements _$$_ForgotPasswordStateCopyWith<$Res> {
  __$$_ForgotPasswordStateCopyWithImpl(_$_ForgotPasswordState _value,
      $Res Function(_$_ForgotPasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? status = null,
    Object? error = freezed,
    Object? isLoadingForgotPassword = null,
  }) {
    return _then(_$_ForgotPasswordState(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      error: freezed == error ? _value.error : error,
      isLoadingForgotPassword: null == isLoadingForgotPassword
          ? _value.isLoadingForgotPassword
          : isLoadingForgotPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordState extends _ForgotPasswordState {
  _$_ForgotPasswordState(
      {required this.phone,
      required this.status,
      this.error,
      required this.isLoadingForgotPassword})
      : super._();

  @override
  final Phone phone;
  @override
  final FormzStatus status;
  @override
  final Object? error;
  @override
  final bool isLoadingForgotPassword;

  @override
  String toString() {
    return 'ForgotPasswordState(phone: $phone, status: $status, error: $error, isLoadingForgotPassword: $isLoadingForgotPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordState &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(
                    other.isLoadingForgotPassword, isLoadingForgotPassword) ||
                other.isLoadingForgotPassword == isLoadingForgotPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, status,
      const DeepCollectionEquality().hash(error), isLoadingForgotPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgotPasswordStateCopyWith<_$_ForgotPasswordState> get copyWith =>
      __$$_ForgotPasswordStateCopyWithImpl<_$_ForgotPasswordState>(
          this, _$identity);
}

abstract class _ForgotPasswordState extends ForgotPasswordState {
  factory _ForgotPasswordState(
      {required final Phone phone,
      required final FormzStatus status,
      final Object? error,
      required final bool isLoadingForgotPassword}) = _$_ForgotPasswordState;
  _ForgotPasswordState._() : super._();

  @override
  Phone get phone;
  @override
  FormzStatus get status;
  @override
  Object? get error;
  @override
  bool get isLoadingForgotPassword;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordStateCopyWith<_$_ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
