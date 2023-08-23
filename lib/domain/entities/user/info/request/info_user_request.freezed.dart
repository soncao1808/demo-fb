// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'info_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InfoUserRequest _$InfoUserRequestFromJson(Map<String, dynamic> json) {
  return _InfoUserRequest.fromJson(json);
}

/// @nodoc
mixin _$InfoUserRequest {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoUserRequestCopyWith<InfoUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoUserRequestCopyWith<$Res> {
  factory $InfoUserRequestCopyWith(
          InfoUserRequest value, $Res Function(InfoUserRequest) then) =
      _$InfoUserRequestCopyWithImpl<$Res, InfoUserRequest>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$InfoUserRequestCopyWithImpl<$Res, $Val extends InfoUserRequest>
    implements $InfoUserRequestCopyWith<$Res> {
  _$InfoUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InfoUserRequestCopyWith<$Res>
    implements $InfoUserRequestCopyWith<$Res> {
  factory _$$_InfoUserRequestCopyWith(
          _$_InfoUserRequest value, $Res Function(_$_InfoUserRequest) then) =
      __$$_InfoUserRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_InfoUserRequestCopyWithImpl<$Res>
    extends _$InfoUserRequestCopyWithImpl<$Res, _$_InfoUserRequest>
    implements _$$_InfoUserRequestCopyWith<$Res> {
  __$$_InfoUserRequestCopyWithImpl(
      _$_InfoUserRequest _value, $Res Function(_$_InfoUserRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_InfoUserRequest(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InfoUserRequest extends _InfoUserRequest {
  _$_InfoUserRequest({required this.email}) : super._();

  factory _$_InfoUserRequest.fromJson(Map<String, dynamic> json) =>
      _$$_InfoUserRequestFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'InfoUserRequest(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfoUserRequest &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfoUserRequestCopyWith<_$_InfoUserRequest> get copyWith =>
      __$$_InfoUserRequestCopyWithImpl<_$_InfoUserRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfoUserRequestToJson(
      this,
    );
  }
}

abstract class _InfoUserRequest extends InfoUserRequest {
  factory _InfoUserRequest({required final String email}) = _$_InfoUserRequest;
  _InfoUserRequest._() : super._();

  factory _InfoUserRequest.fromJson(Map<String, dynamic> json) =
      _$_InfoUserRequest.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_InfoUserRequestCopyWith<_$_InfoUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
