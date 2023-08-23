// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  Phone get phone => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  bool get isStatusPassword => throw _privateConstructorUsedError;
  bool get isLoadingLogin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {Phone phone,
      Password password,
      FormzStatus status,
      Object? error,
      bool isStatusPassword,
      bool isLoadingLogin});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? password = null,
    Object? status = null,
    Object? error = freezed,
    Object? isStatusPassword = null,
    Object? isLoadingLogin = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      error: freezed == error ? _value.error : error,
      isStatusPassword: null == isStatusPassword
          ? _value.isStatusPassword
          : isStatusPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingLogin: null == isLoadingLogin
          ? _value.isLoadingLogin
          : isLoadingLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Phone phone,
      Password password,
      FormzStatus status,
      Object? error,
      bool isStatusPassword,
      bool isLoadingLogin});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? password = null,
    Object? status = null,
    Object? error = freezed,
    Object? isStatusPassword = null,
    Object? isLoadingLogin = null,
  }) {
    return _then(_$_LoginState(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      error: freezed == error ? _value.error : error,
      isStatusPassword: null == isStatusPassword
          ? _value.isStatusPassword
          : isStatusPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingLogin: null == isLoadingLogin
          ? _value.isLoadingLogin
          : isLoadingLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginState extends _LoginState {
  _$_LoginState(
      {required this.phone,
      required this.password,
      required this.status,
      this.error,
      required this.isStatusPassword,
      required this.isLoadingLogin})
      : super._();

  @override
  final Phone phone;
  @override
  final Password password;
  @override
  final FormzStatus status;
  @override
  final Object? error;
  @override
  final bool isStatusPassword;
  @override
  final bool isLoadingLogin;

  @override
  String toString() {
    return 'LoginState(phone: $phone, password: $password, status: $status, error: $error, isStatusPassword: $isStatusPassword, isLoadingLogin: $isLoadingLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.isStatusPassword, isStatusPassword) ||
                other.isStatusPassword == isStatusPassword) &&
            (identical(other.isLoadingLogin, isLoadingLogin) ||
                other.isLoadingLogin == isLoadingLogin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      phone,
      password,
      status,
      const DeepCollectionEquality().hash(error),
      isStatusPassword,
      isLoadingLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState extends LoginState {
  factory _LoginState(
      {required final Phone phone,
      required final Password password,
      required final FormzStatus status,
      final Object? error,
      required final bool isStatusPassword,
      required final bool isLoadingLogin}) = _$_LoginState;
  _LoginState._() : super._();

  @override
  Phone get phone;
  @override
  Password get password;
  @override
  FormzStatus get status;
  @override
  Object? get error;
  @override
  bool get isStatusPassword;
  @override
  bool get isLoadingLogin;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
