// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verification_code_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerificationCodeState {
  String get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  ProcessStatus get processStatus => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  bool get isLoadingVerifyCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerificationCodeStateCopyWith<VerificationCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationCodeStateCopyWith<$Res> {
  factory $VerificationCodeStateCopyWith(VerificationCodeState value,
          $Res Function(VerificationCodeState) then) =
      _$VerificationCodeStateCopyWithImpl<$Res, VerificationCodeState>;
  @useResult
  $Res call(
      {String code,
      String status,
      ProcessStatus processStatus,
      Object? error,
      bool isLoadingVerifyCode});
}

/// @nodoc
class _$VerificationCodeStateCopyWithImpl<$Res,
        $Val extends VerificationCodeState>
    implements $VerificationCodeStateCopyWith<$Res> {
  _$VerificationCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? processStatus = null,
    Object? error = freezed,
    Object? isLoadingVerifyCode = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      processStatus: null == processStatus
          ? _value.processStatus
          : processStatus // ignore: cast_nullable_to_non_nullable
              as ProcessStatus,
      error: freezed == error ? _value.error : error,
      isLoadingVerifyCode: null == isLoadingVerifyCode
          ? _value.isLoadingVerifyCode
          : isLoadingVerifyCode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerificationCodeStateCopyWith<$Res>
    implements $VerificationCodeStateCopyWith<$Res> {
  factory _$$_VerificationCodeStateCopyWith(_$_VerificationCodeState value,
          $Res Function(_$_VerificationCodeState) then) =
      __$$_VerificationCodeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      String status,
      ProcessStatus processStatus,
      Object? error,
      bool isLoadingVerifyCode});
}

/// @nodoc
class __$$_VerificationCodeStateCopyWithImpl<$Res>
    extends _$VerificationCodeStateCopyWithImpl<$Res, _$_VerificationCodeState>
    implements _$$_VerificationCodeStateCopyWith<$Res> {
  __$$_VerificationCodeStateCopyWithImpl(_$_VerificationCodeState _value,
      $Res Function(_$_VerificationCodeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? processStatus = null,
    Object? error = freezed,
    Object? isLoadingVerifyCode = null,
  }) {
    return _then(_$_VerificationCodeState(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      processStatus: null == processStatus
          ? _value.processStatus
          : processStatus // ignore: cast_nullable_to_non_nullable
              as ProcessStatus,
      error: freezed == error ? _value.error : error,
      isLoadingVerifyCode: null == isLoadingVerifyCode
          ? _value.isLoadingVerifyCode
          : isLoadingVerifyCode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VerificationCodeState extends _VerificationCodeState {
  _$_VerificationCodeState(
      {required this.code,
      required this.status,
      this.processStatus = ProcessStatus.initialized,
      this.error,
      required this.isLoadingVerifyCode})
      : super._();

  @override
  final String code;
  @override
  final String status;
  @override
  @JsonKey()
  final ProcessStatus processStatus;
  @override
  final Object? error;
  @override
  final bool isLoadingVerifyCode;

  @override
  String toString() {
    return 'VerificationCodeState(code: $code, status: $status, processStatus: $processStatus, error: $error, isLoadingVerifyCode: $isLoadingVerifyCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerificationCodeState &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.processStatus, processStatus) ||
                other.processStatus == processStatus) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.isLoadingVerifyCode, isLoadingVerifyCode) ||
                other.isLoadingVerifyCode == isLoadingVerifyCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, status, processStatus,
      const DeepCollectionEquality().hash(error), isLoadingVerifyCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerificationCodeStateCopyWith<_$_VerificationCodeState> get copyWith =>
      __$$_VerificationCodeStateCopyWithImpl<_$_VerificationCodeState>(
          this, _$identity);
}

abstract class _VerificationCodeState extends VerificationCodeState {
  factory _VerificationCodeState(
      {required final String code,
      required final String status,
      final ProcessStatus processStatus,
      final Object? error,
      required final bool isLoadingVerifyCode}) = _$_VerificationCodeState;
  _VerificationCodeState._() : super._();

  @override
  String get code;
  @override
  String get status;
  @override
  ProcessStatus get processStatus;
  @override
  Object? get error;
  @override
  bool get isLoadingVerifyCode;
  @override
  @JsonKey(ignore: true)
  _$$_VerificationCodeStateCopyWith<_$_VerificationCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
