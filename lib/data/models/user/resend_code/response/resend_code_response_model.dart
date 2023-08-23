import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fbapp/domain/entities/user/resend_code/response/resend_code_response.dart';

part 'resend_code_response_model.g.dart';

@JsonSerializable()
class ResendCodeResponseModel {
  const ResendCodeResponseModel({
    required this.id,
    required this.verifyCode,
  });

  factory ResendCodeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResendCodeResponseModelFromJson(json);

  @JsonKey(name: "id")
  final int? id;

  @JsonKey(name: "verify_code")
  final String? verifyCode;

  Map<String, dynamic> toJson() => _$ResendCodeResponseModelToJson(this);

  ResendCodeResponse toResendCodeResponse() => ResendCodeResponse(
        id: id,
        verifyCode: verifyCode,
      );
}
