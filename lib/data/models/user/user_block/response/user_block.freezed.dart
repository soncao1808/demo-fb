// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserBlock _$UserBlockFromJson(Map<String, dynamic> json) {
  return _UserBlock.fromJson(json);
}

/// @nodoc
mixin _$UserBlock {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  int? get idUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBlockCopyWith<UserBlock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBlockCopyWith<$Res> {
  factory $UserBlockCopyWith(UserBlock value, $Res Function(UserBlock) then) =
      _$UserBlockCopyWithImpl<$Res, UserBlock>;
  @useResult
  $Res call({int? id, String? name, String? avatar, int? idUser});
}

/// @nodoc
class _$UserBlockCopyWithImpl<$Res, $Val extends UserBlock>
    implements $UserBlockCopyWith<$Res> {
  _$UserBlockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? idUser = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserBlockCopyWith<$Res> implements $UserBlockCopyWith<$Res> {
  factory _$$_UserBlockCopyWith(
          _$_UserBlock value, $Res Function(_$_UserBlock) then) =
      __$$_UserBlockCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? avatar, int? idUser});
}

/// @nodoc
class __$$_UserBlockCopyWithImpl<$Res>
    extends _$UserBlockCopyWithImpl<$Res, _$_UserBlock>
    implements _$$_UserBlockCopyWith<$Res> {
  __$$_UserBlockCopyWithImpl(
      _$_UserBlock _value, $Res Function(_$_UserBlock) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? idUser = freezed,
  }) {
    return _then(_$_UserBlock(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserBlock implements _UserBlock {
  const _$_UserBlock(
      {required this.id,
      required this.name,
      required this.avatar,
      required this.idUser});

  factory _$_UserBlock.fromJson(Map<String, dynamic> json) =>
      _$$_UserBlockFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? avatar;
  @override
  final int? idUser;

  @override
  String toString() {
    return 'UserBlock(id: $id, name: $name, avatar: $avatar, idUser: $idUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserBlock &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.idUser, idUser) || other.idUser == idUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatar, idUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserBlockCopyWith<_$_UserBlock> get copyWith =>
      __$$_UserBlockCopyWithImpl<_$_UserBlock>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserBlockToJson(
      this,
    );
  }
}

abstract class _UserBlock implements UserBlock {
  const factory _UserBlock(
      {required final int? id,
      required final String? name,
      required final String? avatar,
      required final int? idUser}) = _$_UserBlock;

  factory _UserBlock.fromJson(Map<String, dynamic> json) =
      _$_UserBlock.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get avatar;
  @override
  int? get idUser;
  @override
  @JsonKey(ignore: true)
  _$$_UserBlockCopyWith<_$_UserBlock> get copyWith =>
      throw _privateConstructorUsedError;
}
