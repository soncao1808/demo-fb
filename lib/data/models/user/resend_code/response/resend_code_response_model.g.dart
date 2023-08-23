// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_code_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResendCodeResponseModel _$ResendCodeResponseModelFromJson(
        Map<String, dynamic> json) =>
    ResendCodeResponseModel(
      id: json['id'] as int?,
      verifyCode: json['verify_code'] as String?,
    );

Map<String, dynamic> _$ResendCodeResponseModelToJson(
        ResendCodeResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'verify_code': instance.verifyCode,
    };
