// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resend_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResendCodeResponse _$ResendCodeResponseFromJson(Map<String, dynamic> json) {
  return _ResendCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$ResendCodeResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get verifyCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResendCodeResponseCopyWith<ResendCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendCodeResponseCopyWith<$Res> {
  factory $ResendCodeResponseCopyWith(
          ResendCodeResponse value, $Res Function(ResendCodeResponse) then) =
      _$ResendCodeResponseCopyWithImpl<$Res, ResendCodeResponse>;
  @useResult
  $Res call({int? id, String? verifyCode});
}

/// @nodoc
class _$ResendCodeResponseCopyWithImpl<$Res, $Val extends ResendCodeResponse>
    implements $ResendCodeResponseCopyWith<$Res> {
  _$ResendCodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? verifyCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      verifyCode: freezed == verifyCode
          ? _value.verifyCode
          : verifyCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResendCodeResponseCopyWith<$Res>
    implements $ResendCodeResponseCopyWith<$Res> {
  factory _$$_ResendCodeResponseCopyWith(_$_ResendCodeResponse value,
          $Res Function(_$_ResendCodeResponse) then) =
      __$$_ResendCodeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? verifyCode});
}

/// @nodoc
class __$$_ResendCodeResponseCopyWithImpl<$Res>
    extends _$ResendCodeResponseCopyWithImpl<$Res, _$_ResendCodeResponse>
    implements _$$_ResendCodeResponseCopyWith<$Res> {
  __$$_ResendCodeResponseCopyWithImpl(
      _$_ResendCodeResponse _value, $Res Function(_$_ResendCodeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? verifyCode = freezed,
  }) {
    return _then(_$_ResendCodeResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      verifyCode: freezed == verifyCode
          ? _value.verifyCode
          : verifyCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResendCodeResponse implements _ResendCodeResponse {
  const _$_ResendCodeResponse({required this.id, required this.verifyCode});

  factory _$_ResendCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ResendCodeResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? verifyCode;

  @override
  String toString() {
    return 'ResendCodeResponse(id: $id, verifyCode: $verifyCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResendCodeResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.verifyCode, verifyCode) ||
                other.verifyCode == verifyCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, verifyCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResendCodeResponseCopyWith<_$_ResendCodeResponse> get copyWith =>
      __$$_ResendCodeResponseCopyWithImpl<_$_ResendCodeResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResendCodeResponseToJson(
      this,
    );
  }
}

abstract class _ResendCodeResponse implements ResendCodeResponse {
  const factory _ResendCodeResponse(
      {required final int? id,
      required final String? verifyCode}) = _$_ResendCodeResponse;

  factory _ResendCodeResponse.fromJson(Map<String, dynamic> json) =
      _$_ResendCodeResponse.fromJson;

  @override
  int? get id;
  @override
  String? get verifyCode;
  @override
  @JsonKey(ignore: true)
  _$$_ResendCodeResponseCopyWith<_$_ResendCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
