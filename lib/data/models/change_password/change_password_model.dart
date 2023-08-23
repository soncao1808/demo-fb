import 'package:json_annotation/json_annotation.dart';

part 'change_password_model.g.dart';

@JsonSerializable()
class ChangePasswordModel {
  const ChangePasswordModel({
    required this.password,
  });

  factory ChangePasswordModel.fromJson(dynamic json) =>
      _$ChangePasswordModelFromJson(json);

  @JsonKey(name: 'password', defaultValue: null)
  final String? password;

  dynamic toJson() => _$ChangePasswordModelToJson(this);
}
