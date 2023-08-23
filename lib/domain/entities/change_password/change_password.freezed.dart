// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'change_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangePasword _$ChangePaswordFromJson(Map<String, dynamic> json) {
  return _ChangePasword.fromJson(json);
}

/// @nodoc
mixin _$ChangePasword {
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePaswordCopyWith<ChangePasword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePaswordCopyWith<$Res> {
  factory $ChangePaswordCopyWith(
          ChangePasword value, $Res Function(ChangePasword) then) =
      _$ChangePaswordCopyWithImpl<$Res, ChangePasword>;
  @useResult
  $Res call({String? password});
}

/// @nodoc
class _$ChangePaswordCopyWithImpl<$Res, $Val extends ChangePasword>
    implements $ChangePaswordCopyWith<$Res> {
  _$ChangePaswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangePaswordCopyWith<$Res>
    implements $ChangePaswordCopyWith<$Res> {
  factory _$$_ChangePaswordCopyWith(
          _$_ChangePasword value, $Res Function(_$_ChangePasword) then) =
      __$$_ChangePaswordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? password});
}

/// @nodoc
class __$$_ChangePaswordCopyWithImpl<$Res>
    extends _$ChangePaswordCopyWithImpl<$Res, _$_ChangePasword>
    implements _$$_ChangePaswordCopyWith<$Res> {
  __$$_ChangePaswordCopyWithImpl(
      _$_ChangePasword _value, $Res Function(_$_ChangePasword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$_ChangePasword(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChangePasword extends _ChangePasword {
  _$_ChangePasword({required this.password}) : super._();

  factory _$_ChangePasword.fromJson(Map<String, dynamic> json) =>
      _$$_ChangePaswordFromJson(json);

  @override
  final String? password;

  @override
  String toString() {
    return 'ChangePasword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasword &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePaswordCopyWith<_$_ChangePasword> get copyWith =>
      __$$_ChangePaswordCopyWithImpl<_$_ChangePasword>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangePaswordToJson(
      this,
    );
  }
}

abstract class _ChangePasword extends ChangePasword {
  factory _ChangePasword({required final String? password}) = _$_ChangePasword;
  _ChangePasword._() : super._();

  factory _ChangePasword.fromJson(Map<String, dynamic> json) =
      _$_ChangePasword.fromJson;

  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePaswordCopyWith<_$_ChangePasword> get copyWith =>
      throw _privateConstructorUsedError;
}
