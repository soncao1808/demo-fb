// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      id: json['id'] as int?,
      user: json['user'] == null
          ? null
          : UserPost.fromJson(json['user'] as Map<String, dynamic>),
      name: json['name'] as String?,
      time: json['time'] as String?,
      likeCount: json['likeCount'] as int?,
      commentCount: json['commentCount'] as int?,
      shareCount: json['shareCount'] as int?,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
      liked: json['liked'] as bool?,
      contentType: json['contentType'] as String?,
      imageUrl: json['imageUrl'] as String?,
      videoUrl: json['videoUrl'] as String?,
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user?.toJson(),
      'name': instance.name,
      'time': instance.time,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'shareCount': instance.shareCount,
      'liked': instance.liked,
      'comments': instance.comments?.map((e) => e.toJson()).toList(),
      'contentType': instance.contentType,
      'imageUrl': instance.imageUrl,
      'videoUrl': instance.videoUrl,
    };
