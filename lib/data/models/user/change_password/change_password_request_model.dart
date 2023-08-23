import 'package:json_annotation/json_annotation.dart';

part 'change_password_request_model.g.dart';

@JsonSerializable()
class ChangePasswordRequestModel {
  const ChangePasswordRequestModel({
    required this.currentPassword,
    required this.password,
    required this.passwordConfirmation,
  });

  @JsonKey(name: 'current_password')
  final String currentPassword;

  @JsonKey(name: 'password')
  final String password;

  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  factory ChangePasswordRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChangePasswordRequestModelToJson(this);
}
