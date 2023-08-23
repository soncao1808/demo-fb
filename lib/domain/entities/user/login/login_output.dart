import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(
  createToJson: false,
  createFactory: false,
)
class LoginOutput {
  const LoginOutput({
    required this.token,
  });

  @JsonKey(name: 'access_token')
  final String token;
}
