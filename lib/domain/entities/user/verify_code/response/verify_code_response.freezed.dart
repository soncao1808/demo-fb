// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verify_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyCodeResponse {
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyCodeResponseCopyWith<VerifyCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyCodeResponseCopyWith<$Res> {
  factory $VerifyCodeResponseCopyWith(
          VerifyCodeResponse value, $Res Function(VerifyCodeResponse) then) =
      _$VerifyCodeResponseCopyWithImpl<$Res, VerifyCodeResponse>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$VerifyCodeResponseCopyWithImpl<$Res, $Val extends VerifyCodeResponse>
    implements $VerifyCodeResponseCopyWith<$Res> {
  _$VerifyCodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerifyCodeResponseCopyWith<$Res>
    implements $VerifyCodeResponseCopyWith<$Res> {
  factory _$$_VerifyCodeResponseCopyWith(_$_VerifyCodeResponse value,
          $Res Function(_$_VerifyCodeResponse) then) =
      __$$_VerifyCodeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_VerifyCodeResponseCopyWithImpl<$Res>
    extends _$VerifyCodeResponseCopyWithImpl<$Res, _$_VerifyCodeResponse>
    implements _$$_VerifyCodeResponseCopyWith<$Res> {
  __$$_VerifyCodeResponseCopyWithImpl(
      _$_VerifyCodeResponse _value, $Res Function(_$_VerifyCodeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_VerifyCodeResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_VerifyCodeResponse extends _VerifyCodeResponse {
  _$_VerifyCodeResponse({required this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'VerifyCodeResponse(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyCodeResponse &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyCodeResponseCopyWith<_$_VerifyCodeResponse> get copyWith =>
      __$$_VerifyCodeResponseCopyWithImpl<_$_VerifyCodeResponse>(
          this, _$identity);
}

abstract class _VerifyCodeResponse extends VerifyCodeResponse {
  factory _VerifyCodeResponse({required final String? message}) =
      _$_VerifyCodeResponse;
  _VerifyCodeResponse._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyCodeResponseCopyWith<_$_VerifyCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
