import 'package:json_annotation/json_annotation.dart';
import 'package:fbapp/domain/entities/user/login/login_output.dart';

part 'login_output_model.g.dart';

@JsonSerializable()
class LoginOutputModel {
  const LoginOutputModel({
    required this.token,
  });

  factory LoginOutputModel.fromJson(Map<String, dynamic> json) =>
      _$LoginOutputModelFromJson(json);

  @JsonKey(name: 'access_token')
  final String token;

  Map<String, dynamic> toJson() => _$LoginOutputModelToJson(this);

  LoginOutput toEntiteModel() => LoginOutput(token: token);
}
