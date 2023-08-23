import 'package:fbapp/data/models/user/update_profile_user/update_profile_user_request_model.dart';
import 'package:fbapp/domain/entities/asset/asset.dart';

class UpdateProfileUserRequest {
  const UpdateProfileUserRequest({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.birthDay,
    required this.gender,
    required this.idUser,
    required this.files,
  });

  final String name;
  final String email;
  final String phoneNumber;
  final String birthDay;
  final String gender;
  final int idUser;
  final Asset files;

  UpdateProfileUserRequestModel toUpdateProfileUserRequestModel() =>
      UpdateProfileUserRequestModel(
        phoneNumber: phoneNumber,
        birthDay: birthDay,
        email: email,
        gender: gender,
        name: name,
        files: files.toAssetModel(),
      );
}
