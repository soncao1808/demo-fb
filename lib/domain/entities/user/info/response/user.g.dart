// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      gender: json['gender'] as String?,
      birthDay: json['birthDay'] as String?,
      address: json['address'] as String?,
      avatar: json['avatar'] as String?,
      role: json['role'] as String?,
      points: (json['points'] as num?)?.toDouble(),
      purchaseTotal: (json['purchaseTotal'] as num?)?.toDouble(),
      membership: json['membership'] == null
          ? null
          : Membership.fromJson(json['membership'] as Map<String, dynamic>),
      setting: json['setting'] == null
          ? null
          : Setting.fromJson(json['setting'] as Map<String, dynamic>),
      moduleName: json['moduleName'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'birthDay': instance.birthDay,
      'address': instance.address,
      'avatar': instance.avatar,
      'role': instance.role,
      'points': instance.points,
      'purchaseTotal': instance.purchaseTotal,
      'membership': instance.membership,
      'setting': instance.setting,
      'moduleName': instance.moduleName,
    };

_$_Role _$$_RoleFromJson(Map<String, dynamic> json) => _$_Role(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_RoleToJson(_$_Role instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_Membership _$$_MembershipFromJson(Map<String, dynamic> json) =>
    _$_Membership(
      id: json['id'] as int?,
      name: json['name'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      level: (json['level'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_MembershipToJson(_$_Membership instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'content': instance.content,
      'level': instance.level,
    };

_$_Setting _$$_SettingFromJson(Map<String, dynamic> json) => _$_Setting(
      id: json['id'] as int?,
      notification: json['notification'] as bool?,
      sound: json['sound'] as bool?,
    );

Map<String, dynamic> _$$_SettingToJson(_$_Setting instance) =>
    <String, dynamic>{
      'id': instance.id,
      'notification': instance.notification,
      'sound': instance.sound,
    };
