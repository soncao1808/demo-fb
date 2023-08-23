// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_user_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfileUserRequestModel _$UpdateProfileUserRequestModelFromJson(
        Map<String, dynamic> json) =>
    UpdateProfileUserRequestModel(
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: json['phone_number'] as String,
      gender: json['gender'] as String,
      birthDay: json['birth_day'] as String,
      files: AssetModel.fromJson(json['files'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateProfileUserRequestModelToJson(
        UpdateProfileUserRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'gender': instance.gender,
      'birth_day': instance.birthDay,
      'files': instance.files,
    };
