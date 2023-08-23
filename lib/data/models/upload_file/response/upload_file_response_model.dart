import 'package:fbapp/domain/entities/upload_file/upload_image_response/upload_file_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'upload_file_response_model.g.dart';

@JsonSerializable()
class UploadFileResponseModel {
  const UploadFileResponseModel({
    required this.url,
  });

  factory UploadFileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UploadFileResponseModelFromJson(json);

  @JsonKey(name: "url")
  final String url;

  Map<String, dynamic> toJson() => _$UploadFileResponseModelToJson(this);

  UploadFileResponse toUploadFile() => UploadFileResponse(
        url: url,
      );
}
