import 'package:json_annotation/json_annotation.dart';


part 'info_user_request_model.g.dart';

@JsonSerializable()
class InfoUserRequestModel {
  const InfoUserRequestModel({
    required this.email,
  });

  factory InfoUserRequestModel.fromJson(Map<String, dynamic> json) =>
      _$InfoUserRequestModelFromJson(json);

  final String email;

  Map<String, dynamic> toJson() => _$InfoUserRequestModelToJson(this);
}
