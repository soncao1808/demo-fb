// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_output_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginOutputModel _$LoginOutputModelFromJson(Map<String, dynamic> json) =>
    LoginOutputModel(
      token: json['access_token'] as String,
    );

Map<String, dynamic> _$LoginOutputModelToJson(LoginOutputModel instance) =>
    <String, dynamic>{
      'access_token': instance.token,
    };
