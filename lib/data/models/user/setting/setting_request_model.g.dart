// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingRequestModel _$SettingRequestModelFromJson(Map<String, dynamic> json) =>
    SettingRequestModel(
      sound: json['sound'] as bool,
      notification: json['notification'] as bool,
    );

Map<String, dynamic> _$SettingRequestModelToJson(
        SettingRequestModel instance) =>
    <String, dynamic>{
      'sound': instance.sound,
      'notification': instance.notification,
    };
