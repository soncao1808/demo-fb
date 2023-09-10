// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserTag _$UserTagFromJson(Map<String, dynamic> json) => UserTag(
      id: json['id'] as int,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$UserTagToJson(UserTag instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
    };
