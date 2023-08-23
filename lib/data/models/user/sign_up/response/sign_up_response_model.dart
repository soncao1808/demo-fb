import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fbapp/domain/entities/user/sign_up/response/sign_up_response.dart';

part 'sign_up_response_model.g.dart';

@JsonSerializable()
class SignUpResponseModel {
  const SignUpResponseModel({
    required this.id,
    required this.verifyCode,
  });

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseModelFromJson(json);

  @JsonKey(name: "id")
  final int? id;

  @JsonKey(name: "verify_code")
  final String? verifyCode;

  Map<String, dynamic> toJson() => _$SignUpResponseModelToJson(this);

  SignUpResponse toSignUpResponse() =>
      SignUpResponse(id: id, verifyCode: verifyCode);
}
