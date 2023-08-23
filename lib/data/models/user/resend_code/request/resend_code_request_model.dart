import 'package:json_annotation/json_annotation.dart';

part 'resend_code_request_model.g.dart';

@JsonSerializable()
class ResendCodeRequestModel {
  const ResendCodeRequestModel({
    required this.phoneNumber,
  });

  factory ResendCodeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ResendCodeRequestModelFromJson(json);

  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  Map<String, dynamic> toJson() => _$ResendCodeRequestModelToJson(this);
}
