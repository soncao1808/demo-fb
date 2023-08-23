import 'package:fbapp/data/models/upload_file/response/upload_file_response_model.dart';
import 'package:fbapp/data/services/network_services/api_client/api_client.dart';
import 'package:fbapp/domain/entities/upload_file/upload_file_request/upload_file_request.dart';
import 'package:fbapp/domain/entities/upload_file/upload_image_response/upload_file_response.dart';
import 'package:fbapp/domain/repositories/upload_file_repository.dart';

class UploadFileRepositoryImplement implements UploadFileRepository {
  UploadFileRepositoryImplement(this._apiClient);
  final ApiClient _apiClient;

  @override
  Future<UploadFileResponse> getPresignUrl(
      UploadFileRequest uploadFileRequest) async {
    final UploadFileResponseModel response = await _apiClient
        .getPresignUrl(uploadFileRequest.toUploadFileRequestModel());
    return response.toUploadFile();
  }
}
