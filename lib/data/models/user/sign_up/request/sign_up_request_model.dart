import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request_model.g.dart';

@JsonSerializable()
class SignUpRequestModel {
  const SignUpRequestModel({
    required this.name,
    required this.phoneNumber,
    required this.password,
    required this.passwordConfirm
  });

  factory SignUpRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestModelFromJson(json);

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  @JsonKey(name: 'password')
  final String password;

  @JsonKey(name: 'password_confirmation')
  final String passwordConfirm;
  

  Map<String, dynamic> toJson() => _$SignUpRequestModelToJson(this);
}
