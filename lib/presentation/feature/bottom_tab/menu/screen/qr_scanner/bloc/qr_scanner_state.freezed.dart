// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'qr_scanner_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScannerQRCodeState {
  QRViewController? get controller => throw _privateConstructorUsedError;
  ProcessStatus get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Barcode? get qrcode => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScannerQRCodeStateCopyWith<ScannerQRCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScannerQRCodeStateCopyWith<$Res> {
  factory $ScannerQRCodeStateCopyWith(
          ScannerQRCodeState value, $Res Function(ScannerQRCodeState) then) =
      _$ScannerQRCodeStateCopyWithImpl<$Res, ScannerQRCodeState>;
  @useResult
  $Res call(
      {QRViewController? controller,
      ProcessStatus status,
      String? message,
      Barcode? qrcode,
      int? id});
}

/// @nodoc
class _$ScannerQRCodeStateCopyWithImpl<$Res, $Val extends ScannerQRCodeState>
    implements $ScannerQRCodeStateCopyWith<$Res> {
  _$ScannerQRCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = freezed,
    Object? status = null,
    Object? message = freezed,
    Object? qrcode = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as QRViewController?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProcessStatus,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      qrcode: freezed == qrcode
          ? _value.qrcode
          : qrcode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScannerQRCodeStateCopyWith<$Res>
    implements $ScannerQRCodeStateCopyWith<$Res> {
  factory _$$_ScannerQRCodeStateCopyWith(_$_ScannerQRCodeState value,
          $Res Function(_$_ScannerQRCodeState) then) =
      __$$_ScannerQRCodeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QRViewController? controller,
      ProcessStatus status,
      String? message,
      Barcode? qrcode,
      int? id});
}

/// @nodoc
class __$$_ScannerQRCodeStateCopyWithImpl<$Res>
    extends _$ScannerQRCodeStateCopyWithImpl<$Res, _$_ScannerQRCodeState>
    implements _$$_ScannerQRCodeStateCopyWith<$Res> {
  __$$_ScannerQRCodeStateCopyWithImpl(
      _$_ScannerQRCodeState _value, $Res Function(_$_ScannerQRCodeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = freezed,
    Object? status = null,
    Object? message = freezed,
    Object? qrcode = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_ScannerQRCodeState(
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as QRViewController?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProcessStatus,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      qrcode: freezed == qrcode
          ? _value.qrcode
          : qrcode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ScannerQRCodeState extends _ScannerQRCodeState {
  _$_ScannerQRCodeState(
      {required this.controller,
      required this.status,
      required this.message,
      required this.qrcode,
      required this.id})
      : super._();

  @override
  final QRViewController? controller;
  @override
  final ProcessStatus status;
  @override
  final String? message;
  @override
  final Barcode? qrcode;
  @override
  final int? id;

  @override
  String toString() {
    return 'ScannerQRCodeState(controller: $controller, status: $status, message: $message, qrcode: $qrcode, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScannerQRCodeState &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.qrcode, qrcode) || other.qrcode == qrcode) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, controller, status, message, qrcode, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScannerQRCodeStateCopyWith<_$_ScannerQRCodeState> get copyWith =>
      __$$_ScannerQRCodeStateCopyWithImpl<_$_ScannerQRCodeState>(
          this, _$identity);
}

abstract class _ScannerQRCodeState extends ScannerQRCodeState {
  factory _ScannerQRCodeState(
      {required final QRViewController? controller,
      required final ProcessStatus status,
      required final String? message,
      required final Barcode? qrcode,
      required final int? id}) = _$_ScannerQRCodeState;
  _ScannerQRCodeState._() : super._();

  @override
  QRViewController? get controller;
  @override
  ProcessStatus get status;
  @override
  String? get message;
  @override
  Barcode? get qrcode;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_ScannerQRCodeStateCopyWith<_$_ScannerQRCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
