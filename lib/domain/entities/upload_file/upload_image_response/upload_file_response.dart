import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_file_response.freezed.dart';

@freezed
class UploadFileResponse with _$UploadFileResponse {
  factory UploadFileResponse({
    required String url,
  }) = _UploadFileResponse;

  const UploadFileResponse._();
}
