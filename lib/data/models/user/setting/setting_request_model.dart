import 'package:json_annotation/json_annotation.dart';

part 'setting_request_model.g.dart';

@JsonSerializable()
class SettingRequestModel {
  const SettingRequestModel({
    required this.sound,
    required this.notification,
  });

  @JsonKey(name: 'sound')
  final bool sound;

  @JsonKey(name: 'notification')
  final bool notification;

  factory SettingRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SettingRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$SettingRequestModelToJson(this);
}
