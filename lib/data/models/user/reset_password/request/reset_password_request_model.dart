import 'package:json_annotation/json_annotation.dart';

part 'reset_password_request_model.g.dart';

@JsonSerializable()
class ResetPasswordRequestModel {
  const ResetPasswordRequestModel({
    required this.userId,
    required this.code,
    required this.password,
    required this.passwordConfirmation,
  });

  factory ResetPasswordRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestModelFromJson(json);

  @JsonKey(name: 'user_id')
  final int userId;

  @JsonKey(name: 'code')
  final String code;

  @JsonKey(name: 'password')
  final String password;

  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  Map<String, dynamic> toJson() => _$ResetPasswordRequestModelToJson(this);
}