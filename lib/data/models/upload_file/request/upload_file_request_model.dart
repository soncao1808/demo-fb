import 'package:json_annotation/json_annotation.dart';

part 'upload_file_request_model.g.dart';

@JsonSerializable()
class UploadFileRequestModel {
  const UploadFileRequestModel({required this.key});

  factory UploadFileRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UploadFileRequestModelFromJson(json);

  @JsonKey(name: 'key')
  final String key;

  Map<String, dynamic> toJson() => _$UploadFileRequestModelToJson(this);
}
