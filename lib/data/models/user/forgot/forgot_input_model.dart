import 'package:json_annotation/json_annotation.dart';

part 'forgot_input_model.g.dart';

@JsonSerializable()
class ForgotInputModel {
  const ForgotInputModel({
    required this.email,
  });

  factory ForgotInputModel.fromJson(Map<String, dynamic> json) =>
      _$ForgotInputModelFromJson(json);

  @JsonKey(name: 'email')
  final String email;

  Map<String, dynamic> toJson() => _$ForgotInputModelToJson(this);
}
