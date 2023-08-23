// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_file_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UploadFileResponse {
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadFileResponseCopyWith<UploadFileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileResponseCopyWith<$Res> {
  factory $UploadFileResponseCopyWith(
          UploadFileResponse value, $Res Function(UploadFileResponse) then) =
      _$UploadFileResponseCopyWithImpl<$Res, UploadFileResponse>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$UploadFileResponseCopyWithImpl<$Res, $Val extends UploadFileResponse>
    implements $UploadFileResponseCopyWith<$Res> {
  _$UploadFileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UploadFileResponseCopyWith<$Res>
    implements $UploadFileResponseCopyWith<$Res> {
  factory _$$_UploadFileResponseCopyWith(_$_UploadFileResponse value,
          $Res Function(_$_UploadFileResponse) then) =
      __$$_UploadFileResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$_UploadFileResponseCopyWithImpl<$Res>
    extends _$UploadFileResponseCopyWithImpl<$Res, _$_UploadFileResponse>
    implements _$$_UploadFileResponseCopyWith<$Res> {
  __$$_UploadFileResponseCopyWithImpl(
      _$_UploadFileResponse _value, $Res Function(_$_UploadFileResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$_UploadFileResponse(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UploadFileResponse extends _UploadFileResponse {
  _$_UploadFileResponse({required this.url}) : super._();

  @override
  final String url;

  @override
  String toString() {
    return 'UploadFileResponse(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadFileResponse &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadFileResponseCopyWith<_$_UploadFileResponse> get copyWith =>
      __$$_UploadFileResponseCopyWithImpl<_$_UploadFileResponse>(
          this, _$identity);
}

abstract class _UploadFileResponse extends UploadFileResponse {
  factory _UploadFileResponse({required final String url}) =
      _$_UploadFileResponse;
  _UploadFileResponse._() : super._();

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_UploadFileResponseCopyWith<_$_UploadFileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
