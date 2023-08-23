// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phone_number'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      gender: json['gender'] as String?,
      birthDay: json['birth_day'] as String?,
      address: json['address'] as String?,
      avatar: json['avatar'] as String?,
      role: json['role'] as String?,
      membership: json['membership'] == null
          ? null
          : MembershipModel.fromJson(
              json['membership'] as Map<String, dynamic>),
      setting: json['setting'] == null
          ? null
          : SettingModel.fromJson(json['setting'] as Map<String, dynamic>),
      moduleName: json['module_name'] as String?,
      points: (json['points'] as num?)?.toDouble(),
      purchaseTotal: (json['purchase_total'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'gender': instance.gender,
      'birth_day': instance.birthDay,
      'address': instance.address,
      'avatar': instance.avatar,
      'role': instance.role,
      'membership': instance.membership,
      'setting': instance.setting,
      'module_name': instance.moduleName,
      'points': instance.points,
      'purchase_total': instance.purchaseTotal,
    };

RoleModel _$RoleModelFromJson(Map<String, dynamic> json) => RoleModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RoleModelToJson(RoleModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

MembershipModel _$MembershipModelFromJson(Map<String, dynamic> json) =>
    MembershipModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      level: (json['level'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MembershipModelToJson(MembershipModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'content': instance.content,
      'level': instance.level,
    };

SettingModel _$SettingModelFromJson(Map<String, dynamic> json) => SettingModel(
      id: json['id'] as int?,
      notification: json['notification'] as bool?,
      sound: json['sound'] as bool?,
    );

Map<String, dynamic> _$SettingModelToJson(SettingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'notification': instance.notification,
      'sound': instance.sound,
    };
