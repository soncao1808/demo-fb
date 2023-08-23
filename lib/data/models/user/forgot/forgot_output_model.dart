import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/entities/user/forgot/forgot_request.dart';

part 'forgot_output_model.g.dart';

@JsonSerializable()
class ForgotOutputModel {
  const ForgotOutputModel({
    required this.data,
  });

  factory ForgotOutputModel.fromJson(Map<String, dynamic> json) =>
      _$ForgotOutputModelFromJson(json);

  @JsonKey(name: 'data')
  final String data;

  Map<String, dynamic> toJson() => _$ForgotOutputModelToJson(this);

  ForgotOutput toEntiteModel() => const ForgotOutput();
}
