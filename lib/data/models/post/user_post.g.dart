// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPost _$UserPostFromJson(Map<String, dynamic> json) => UserPost(
      avatar: json['avatar'] as String?,
      name: json['name'] as String?,
      isMe: json['isMe'] as bool? ?? false,
    );

Map<String, dynamic> _$UserPostToJson(UserPost instance) => <String, dynamic>{
      'avatar': instance.avatar,
      'name': instance.name,
      'isMe': instance.isMe,
    };
