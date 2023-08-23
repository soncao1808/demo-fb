// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get birthDay => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  double? get points => throw _privateConstructorUsedError;
  double? get purchaseTotal => throw _privateConstructorUsedError;
  Membership? get membership => throw _privateConstructorUsedError;
  Setting? get setting => throw _privateConstructorUsedError;
  String? get moduleName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? phoneNumber,
      String? firstName,
      String? lastName,
      String? gender,
      String? birthDay,
      String? address,
      String? avatar,
      String? role,
      double? points,
      double? purchaseTotal,
      Membership? membership,
      Setting? setting,
      String? moduleName});

  $MembershipCopyWith<$Res>? get membership;
  $SettingCopyWith<$Res>? get setting;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? birthDay = freezed,
    Object? address = freezed,
    Object? avatar = freezed,
    Object? role = freezed,
    Object? points = freezed,
    Object? purchaseTotal = freezed,
    Object? membership = freezed,
    Object? setting = freezed,
    Object? moduleName = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDay: freezed == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as double?,
      purchaseTotal: freezed == purchaseTotal
          ? _value.purchaseTotal
          : purchaseTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      membership: freezed == membership
          ? _value.membership
          : membership // ignore: cast_nullable_to_non_nullable
              as Membership?,
      setting: freezed == setting
          ? _value.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as Setting?,
      moduleName: freezed == moduleName
          ? _value.moduleName
          : moduleName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MembershipCopyWith<$Res>? get membership {
    if (_value.membership == null) {
      return null;
    }

    return $MembershipCopyWith<$Res>(_value.membership!, (value) {
      return _then(_value.copyWith(membership: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingCopyWith<$Res>? get setting {
    if (_value.setting == null) {
      return null;
    }

    return $SettingCopyWith<$Res>(_value.setting!, (value) {
      return _then(_value.copyWith(setting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? phoneNumber,
      String? firstName,
      String? lastName,
      String? gender,
      String? birthDay,
      String? address,
      String? avatar,
      String? role,
      double? points,
      double? purchaseTotal,
      Membership? membership,
      Setting? setting,
      String? moduleName});

  @override
  $MembershipCopyWith<$Res>? get membership;
  @override
  $SettingCopyWith<$Res>? get setting;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? birthDay = freezed,
    Object? address = freezed,
    Object? avatar = freezed,
    Object? role = freezed,
    Object? points = freezed,
    Object? purchaseTotal = freezed,
    Object? membership = freezed,
    Object? setting = freezed,
    Object? moduleName = freezed,
  }) {
    return _then(_$_User(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDay: freezed == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as double?,
      purchaseTotal: freezed == purchaseTotal
          ? _value.purchaseTotal
          : purchaseTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      membership: freezed == membership
          ? _value.membership
          : membership // ignore: cast_nullable_to_non_nullable
              as Membership?,
      setting: freezed == setting
          ? _value.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as Setting?,
      moduleName: freezed == moduleName
          ? _value.moduleName
          : moduleName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User {
  _$_User(
      {required this.id,
      required this.name,
      required this.email,
      required this.phoneNumber,
      required this.firstName,
      required this.lastName,
      required this.gender,
      required this.birthDay,
      required this.address,
      required this.avatar,
      required this.role,
      required this.points,
      required this.purchaseTotal,
      required this.membership,
      required this.setting,
      required this.moduleName})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? gender;
  @override
  final String? birthDay;
  @override
  final String? address;
  @override
  final String? avatar;
  @override
  final String? role;
  @override
  final double? points;
  @override
  final double? purchaseTotal;
  @override
  final Membership? membership;
  @override
  final Setting? setting;
  @override
  final String? moduleName;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, gender: $gender, birthDay: $birthDay, address: $address, avatar: $avatar, role: $role, points: $points, purchaseTotal: $purchaseTotal, membership: $membership, setting: $setting, moduleName: $moduleName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDay, birthDay) ||
                other.birthDay == birthDay) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.purchaseTotal, purchaseTotal) ||
                other.purchaseTotal == purchaseTotal) &&
            (identical(other.membership, membership) ||
                other.membership == membership) &&
            (identical(other.setting, setting) || other.setting == setting) &&
            (identical(other.moduleName, moduleName) ||
                other.moduleName == moduleName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      phoneNumber,
      firstName,
      lastName,
      gender,
      birthDay,
      address,
      avatar,
      role,
      points,
      purchaseTotal,
      membership,
      setting,
      moduleName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User extends User {
  factory _User(
      {required final int? id,
      required final String? name,
      required final String? email,
      required final String? phoneNumber,
      required final String? firstName,
      required final String? lastName,
      required final String? gender,
      required final String? birthDay,
      required final String? address,
      required final String? avatar,
      required final String? role,
      required final double? points,
      required final double? purchaseTotal,
      required final Membership? membership,
      required final Setting? setting,
      required final String? moduleName}) = _$_User;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get gender;
  @override
  String? get birthDay;
  @override
  String? get address;
  @override
  String? get avatar;
  @override
  String? get role;
  @override
  double? get points;
  @override
  double? get purchaseTotal;
  @override
  Membership? get membership;
  @override
  Setting? get setting;
  @override
  String? get moduleName;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

Role _$RoleFromJson(Map<String, dynamic> json) {
  return _Role.fromJson(json);
}

/// @nodoc
mixin _$Role {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoleCopyWith<Role> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleCopyWith<$Res> {
  factory $RoleCopyWith(Role value, $Res Function(Role) then) =
      _$RoleCopyWithImpl<$Res, Role>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$RoleCopyWithImpl<$Res, $Val extends Role>
    implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoleCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$$_RoleCopyWith(_$_Role value, $Res Function(_$_Role) then) =
      __$$_RoleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$_RoleCopyWithImpl<$Res> extends _$RoleCopyWithImpl<$Res, _$_Role>
    implements _$$_RoleCopyWith<$Res> {
  __$$_RoleCopyWithImpl(_$_Role _value, $Res Function(_$_Role) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Role(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Role implements _Role {
  _$_Role({required this.id, required this.name});

  factory _$_Role.fromJson(Map<String, dynamic> json) => _$$_RoleFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Role(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Role &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoleCopyWith<_$_Role> get copyWith =>
      __$$_RoleCopyWithImpl<_$_Role>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoleToJson(
      this,
    );
  }
}

abstract class _Role implements Role {
  factory _Role({required final int? id, required final String? name}) =
      _$_Role;

  factory _Role.fromJson(Map<String, dynamic> json) = _$_Role.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_RoleCopyWith<_$_Role> get copyWith => throw _privateConstructorUsedError;
}

Membership _$MembershipFromJson(Map<String, dynamic> json) {
  return _Membership.fromJson(json);
}

/// @nodoc
mixin _$Membership {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  double? get level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MembershipCopyWith<Membership> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipCopyWith<$Res> {
  factory $MembershipCopyWith(
          Membership value, $Res Function(Membership) then) =
      _$MembershipCopyWithImpl<$Res, Membership>;
  @useResult
  $Res call(
      {int? id, String? name, String? title, String? content, double? level});
}

/// @nodoc
class _$MembershipCopyWithImpl<$Res, $Val extends Membership>
    implements $MembershipCopyWith<$Res> {
  _$MembershipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? level = freezed,
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MembershipCopyWith<$Res>
    implements $MembershipCopyWith<$Res> {
  factory _$$_MembershipCopyWith(
          _$_Membership value, $Res Function(_$_Membership) then) =
      __$$_MembershipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String? name, String? title, String? content, double? level});
}

/// @nodoc
class __$$_MembershipCopyWithImpl<$Res>
    extends _$MembershipCopyWithImpl<$Res, _$_Membership>
    implements _$$_MembershipCopyWith<$Res> {
  __$$_MembershipCopyWithImpl(
      _$_Membership _value, $Res Function(_$_Membership) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? level = freezed,
  }) {
    return _then(_$_Membership(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Membership implements _Membership {
  _$_Membership(
      {required this.id,
      required this.name,
      required this.title,
      required this.content,
      required this.level});

  factory _$_Membership.fromJson(Map<String, dynamic> json) =>
      _$$_MembershipFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final double? level;

  @override
  String toString() {
    return 'Membership(id: $id, name: $name, title: $title, content: $content, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Membership &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, title, content, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MembershipCopyWith<_$_Membership> get copyWith =>
      __$$_MembershipCopyWithImpl<_$_Membership>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MembershipToJson(
      this,
    );
  }
}

abstract class _Membership implements Membership {
  factory _Membership(
      {required final int? id,
      required final String? name,
      required final String? title,
      required final String? content,
      required final double? level}) = _$_Membership;

  factory _Membership.fromJson(Map<String, dynamic> json) =
      _$_Membership.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get title;
  @override
  String? get content;
  @override
  double? get level;
  @override
  @JsonKey(ignore: true)
  _$$_MembershipCopyWith<_$_Membership> get copyWith =>
      throw _privateConstructorUsedError;
}

Setting _$SettingFromJson(Map<String, dynamic> json) {
  return _Setting.fromJson(json);
}

/// @nodoc
mixin _$Setting {
  int? get id => throw _privateConstructorUsedError;
  bool? get notification => throw _privateConstructorUsedError;
  bool? get sound => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingCopyWith<Setting> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingCopyWith<$Res> {
  factory $SettingCopyWith(Setting value, $Res Function(Setting) then) =
      _$SettingCopyWithImpl<$Res, Setting>;
  @useResult
  $Res call({int? id, bool? notification, bool? sound});
}

/// @nodoc
class _$SettingCopyWithImpl<$Res, $Val extends Setting>
    implements $SettingCopyWith<$Res> {
  _$SettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? notification = freezed,
    Object? sound = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as bool?,
      sound: freezed == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingCopyWith<$Res> implements $SettingCopyWith<$Res> {
  factory _$$_SettingCopyWith(
          _$_Setting value, $Res Function(_$_Setting) then) =
      __$$_SettingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, bool? notification, bool? sound});
}

/// @nodoc
class __$$_SettingCopyWithImpl<$Res>
    extends _$SettingCopyWithImpl<$Res, _$_Setting>
    implements _$$_SettingCopyWith<$Res> {
  __$$_SettingCopyWithImpl(_$_Setting _value, $Res Function(_$_Setting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? notification = freezed,
    Object? sound = freezed,
  }) {
    return _then(_$_Setting(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as bool?,
      sound: freezed == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Setting extends _Setting {
  _$_Setting(
      {required this.id, required this.notification, required this.sound})
      : super._();

  factory _$_Setting.fromJson(Map<String, dynamic> json) =>
      _$$_SettingFromJson(json);

  @override
  final int? id;
  @override
  final bool? notification;
  @override
  final bool? sound;

  @override
  String toString() {
    return 'Setting(id: $id, notification: $notification, sound: $sound)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Setting &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.sound, sound) || other.sound == sound));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, notification, sound);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingCopyWith<_$_Setting> get copyWith =>
      __$$_SettingCopyWithImpl<_$_Setting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingToJson(
      this,
    );
  }
}

abstract class _Setting extends Setting {
  factory _Setting(
      {required final int? id,
      required final bool? notification,
      required final bool? sound}) = _$_Setting;
  _Setting._() : super._();

  factory _Setting.fromJson(Map<String, dynamic> json) = _$_Setting.fromJson;

  @override
  int? get id;
  @override
  bool? get notification;
  @override
  bool? get sound;
  @override
  @JsonKey(ignore: true)
  _$$_SettingCopyWith<_$_Setting> get copyWith =>
      throw _privateConstructorUsedError;
}
