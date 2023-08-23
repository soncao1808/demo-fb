// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_code_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyCodeRequestModel _$VerifyCodeRequestModelFromJson(
        Map<String, dynamic> json) =>
    VerifyCodeRequestModel(
      code: json['code'] as String,
      phoneNumber: json['phone_number'] as String,
    );

Map<String, dynamic> _$VerifyCodeRequestModelToJson(
        VerifyCodeRequestModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'phone_number': instance.phoneNumber,
    };

VerifyCodeRequestParametersModel _$VerifyCodeRequestParametersModelFromJson(
        Map<String, dynamic> json) =>
    VerifyCodeRequestParametersModel(
      type: json['type'] as String,
    );

Map<String, dynamic> _$VerifyCodeRequestParametersModelToJson(
        VerifyCodeRequestParametersModel instance) =>
    <String, dynamic>{
      'type': instance.type,
    };
