import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fbapp/data/models/user/info/request/info_user_request_model.dart';

part 'info_user_request.freezed.dart';
part 'info_user_request.g.dart';

@freezed
class InfoUserRequest with _$InfoUserRequest {
  factory InfoUserRequest({
    required String email,
  }) = _InfoUserRequest;

  const InfoUserRequest._();

  factory InfoUserRequest.fromJson(Map<String, dynamic> json) =>
      _$InfoUserRequestFromJson(json);

  InfoUserRequestModel toInfoUserRequest() =>
      InfoUserRequestModel(email: email);
}
