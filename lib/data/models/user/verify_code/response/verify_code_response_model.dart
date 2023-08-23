import 'package:json_annotation/json_annotation.dart';
import 'package:fbapp/domain/entities/user/verify_code/response/verify_code_response.dart';

part 'verify_code_response_model.g.dart';

@JsonSerializable()
class VerifyCodeResponseModel {
  const VerifyCodeResponseModel({
    required this.message,
  });

  factory VerifyCodeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyCodeResponseModelFromJson(json);

  @JsonKey(name: 'message')
  final String? message;

  Map<String, dynamic> toJson() => _$VerifyCodeResponseModelToJson(this);

  VerifyCodeResponse toVerifyCodeResponseModel() => VerifyCodeResponse(
        message: message,
      );
}
