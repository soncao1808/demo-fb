// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_input_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginInputModel _$LoginInputModelFromJson(Map<String, dynamic> json) =>
    LoginInputModel(
      phoneNumber: json['phone_number'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginInputModelToJson(LoginInputModel instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'password': instance.password,
    };
