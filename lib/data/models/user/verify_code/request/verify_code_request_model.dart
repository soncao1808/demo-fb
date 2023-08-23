import 'package:json_annotation/json_annotation.dart';

part 'verify_code_request_model.g.dart';

@JsonSerializable()
class VerifyCodeRequestModel {
  const VerifyCodeRequestModel({
    required this.code,
    required this.phoneNumber,
  });

  factory VerifyCodeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyCodeRequestModelFromJson(json);

  @JsonKey(name: 'code')
  final String code;

  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  Map<String, dynamic> toJson() => _$VerifyCodeRequestModelToJson(this);
}

@JsonSerializable()
class VerifyCodeRequestParametersModel {
  const VerifyCodeRequestParametersModel({
    required this.type,
  });

  factory VerifyCodeRequestParametersModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyCodeRequestParametersModelFromJson(json);

  @JsonKey(name: 'type')
  final String type;


  Map<String, dynamic> toJson() => _$VerifyCodeRequestParametersModelToJson(this);
}
