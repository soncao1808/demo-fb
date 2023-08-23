// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRequestModel _$SignUpRequestModelFromJson(Map<String, dynamic> json) =>
    SignUpRequestModel(
      name: json['name'] as String,
      phoneNumber: json['phone_number'] as String,
      password: json['password'] as String,
      passwordConfirm: json['password_confirmation'] as String,
    );

Map<String, dynamic> _$SignUpRequestModelToJson(SignUpRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirm,
    };
