import 'package:json_annotation/json_annotation.dart';

part 'login_input_model.g.dart';

@JsonSerializable()
class LoginInputModel {
  const LoginInputModel({
    required this.phoneNumber,
    required this.password,
  });

  factory LoginInputModel.fromJson(Map<String, dynamic> json) =>
      _$LoginInputModelFromJson(json);

  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  @JsonKey(name: 'password')
  final String password;

  Map<String, dynamic> toJson() => _$LoginInputModelToJson(this);
}
