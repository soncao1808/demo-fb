import 'package:fbapp/data/models/user/change_password/change_password_request_model.dart';

class ChangePasswordRequest {
  const ChangePasswordRequest({
    required this.currentPassword,
    required this.password,
    required this.passwordConfirmation,
    required this.idUser,
  });

  final String currentPassword;
  final String password;
  final String passwordConfirmation;
  final int idUser;

  ChangePasswordRequestModel toChangePasswordRequestModel() =>
      ChangePasswordRequestModel(
        passwordConfirmation: passwordConfirmation,
        currentPassword: currentPassword,
        password: password,
      );
}
