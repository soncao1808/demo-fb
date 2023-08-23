import 'package:fbapp/data/models/upload_file/request/upload_file_request_model.dart';

class UploadFileRequest {
  const UploadFileRequest({required this.key});

  final String key;

  UploadFileRequestModel toUploadFileRequestModel() =>
      UploadFileRequestModel(key: key);
}
