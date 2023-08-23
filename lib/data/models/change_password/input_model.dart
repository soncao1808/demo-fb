import 'package:json_annotation/json_annotation.dart';

part 'input_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ChangePasswordInputModel {
  const ChangePasswordInputModel({
    required this.password,
  });

  factory ChangePasswordInputModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordInputModelFromJson(json);

  final String password;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "password": password,
    };
  }
}
