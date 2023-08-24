// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      id: json['id'] as int?,
      name: json['name'] as String?,
      time: json['time'] as String?,
      location: json['location'] as String?,
      careCount: json['careCount'] as int?,
      joinCount: json['joinCount'] as int?,
      care: json['care'] as bool? ?? false,
      join: json['willBeJoin'] as bool? ?? false,
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'id': instance.id,
      'time': instance.time,
      'name': instance.name,
      'location': instance.location,
      'careCount': instance.careCount,
      'joinCount': instance.joinCount,
      'care': instance.care,
      'willBeJoin': instance.join,
    };
