import 'package:fbapp/domain/entities/upload_file/upload_file_request/upload_file_request.dart';
import 'package:fbapp/domain/entities/upload_file/upload_image_response/upload_file_response.dart';

abstract class UploadFileRepository {
  Future<UploadFileResponse> getPresignUrl(
      UploadFileRequest uploadImageRequest);
}
