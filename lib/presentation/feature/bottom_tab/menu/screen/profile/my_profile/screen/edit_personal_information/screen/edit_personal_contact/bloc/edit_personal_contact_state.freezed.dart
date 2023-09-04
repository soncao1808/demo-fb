// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_personal_contact_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditPersonalContactState {
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  Privacy? get phonePrivacy => throw _privateConstructorUsedError;
  Privacy? get emailPrivacy => throw _privateConstructorUsedError;
  Privacy? get addressPrivacy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditPersonalContactStateCopyWith<EditPersonalContactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPersonalContactStateCopyWith<$Res> {
  factory $EditPersonalContactStateCopyWith(EditPersonalContactState value,
          $Res Function(EditPersonalContactState) then) =
      _$EditPersonalContactStateCopyWithImpl<$Res, EditPersonalContactState>;
  @useResult
  $Res call(
      {String? phone,
      String? email,
      String? address,
      Privacy? phonePrivacy,
      Privacy? emailPrivacy,
      Privacy? addressPrivacy});
}

/// @nodoc
class _$EditPersonalContactStateCopyWithImpl<$Res,
        $Val extends EditPersonalContactState>
    implements $EditPersonalContactStateCopyWith<$Res> {
  _$EditPersonalContactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? phonePrivacy = freezed,
    Object? emailPrivacy = freezed,
    Object? addressPrivacy = freezed,
  }) {
    return _then(_value.copyWith(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phonePrivacy: freezed == phonePrivacy
          ? _value.phonePrivacy
          : phonePrivacy // ignore: cast_nullable_to_non_nullable
              as Privacy?,
      emailPrivacy: freezed == emailPrivacy
          ? _value.emailPrivacy
          : emailPrivacy // ignore: cast_nullable_to_non_nullable
              as Privacy?,
      addressPrivacy: freezed == addressPrivacy
          ? _value.addressPrivacy
          : addressPrivacy // ignore: cast_nullable_to_non_nullable
              as Privacy?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditPersonalContactStateCopyWith<$Res>
    implements $EditPersonalContactStateCopyWith<$Res> {
  factory _$$_EditPersonalContactStateCopyWith(
          _$_EditPersonalContactState value,
          $Res Function(_$_EditPersonalContactState) then) =
      __$$_EditPersonalContactStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? phone,
      String? email,
      String? address,
      Privacy? phonePrivacy,
      Privacy? emailPrivacy,
      Privacy? addressPrivacy});
}

/// @nodoc
class __$$_EditPersonalContactStateCopyWithImpl<$Res>
    extends _$EditPersonalContactStateCopyWithImpl<$Res,
        _$_EditPersonalContactState>
    implements _$$_EditPersonalContactStateCopyWith<$Res> {
  __$$_EditPersonalContactStateCopyWithImpl(_$_EditPersonalContactState _value,
      $Res Function(_$_EditPersonalContactState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? phonePrivacy = freezed,
    Object? emailPrivacy = freezed,
    Object? addressPrivacy = freezed,
  }) {
    return _then(_$_EditPersonalContactState(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phonePrivacy: freezed == phonePrivacy
          ? _value.phonePrivacy
          : phonePrivacy // ignore: cast_nullable_to_non_nullable
              as Privacy?,
      emailPrivacy: freezed == emailPrivacy
          ? _value.emailPrivacy
          : emailPrivacy // ignore: cast_nullable_to_non_nullable
              as Privacy?,
      addressPrivacy: freezed == addressPrivacy
          ? _value.addressPrivacy
          : addressPrivacy // ignore: cast_nullable_to_non_nullable
              as Privacy?,
    ));
  }
}

/// @nodoc

class _$_EditPersonalContactState extends _EditPersonalContactState {
  _$_EditPersonalContactState(
      {this.phone,
      this.email,
      this.address,
      this.phonePrivacy,
      this.emailPrivacy,
      this.addressPrivacy})
      : super._();

  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? address;
  @override
  final Privacy? phonePrivacy;
  @override
  final Privacy? emailPrivacy;
  @override
  final Privacy? addressPrivacy;

  @override
  String toString() {
    return 'EditPersonalContactState(phone: $phone, email: $email, address: $address, phonePrivacy: $phonePrivacy, emailPrivacy: $emailPrivacy, addressPrivacy: $addressPrivacy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditPersonalContactState &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phonePrivacy, phonePrivacy) ||
                other.phonePrivacy == phonePrivacy) &&
            (identical(other.emailPrivacy, emailPrivacy) ||
                other.emailPrivacy == emailPrivacy) &&
            (identical(other.addressPrivacy, addressPrivacy) ||
                other.addressPrivacy == addressPrivacy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, email, address,
      phonePrivacy, emailPrivacy, addressPrivacy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditPersonalContactStateCopyWith<_$_EditPersonalContactState>
      get copyWith => __$$_EditPersonalContactStateCopyWithImpl<
          _$_EditPersonalContactState>(this, _$identity);
}

abstract class _EditPersonalContactState extends EditPersonalContactState {
  factory _EditPersonalContactState(
      {final String? phone,
      final String? email,
      final String? address,
      final Privacy? phonePrivacy,
      final Privacy? emailPrivacy,
      final Privacy? addressPrivacy}) = _$_EditPersonalContactState;
  _EditPersonalContactState._() : super._();

  @override
  String? get phone;
  @override
  String? get email;
  @override
  String? get address;
  @override
  Privacy? get phonePrivacy;
  @override
  Privacy? get emailPrivacy;
  @override
  Privacy? get addressPrivacy;
  @override
  @JsonKey(ignore: true)
  _$$_EditPersonalContactStateCopyWith<_$_EditPersonalContactState>
      get copyWith => throw _privateConstructorUsedError;
}
