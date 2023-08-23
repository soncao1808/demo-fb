import 'package:fbapp/data/models/user/reset_password/request/reset_password_request_model.dart';

class ResetPasswordRequest {
  const ResetPasswordRequest({
    required this.userId,
    required this.code,
    required this.password,
    required this.passwordConfirmation,
  });

  final int userId;
  final String code;
  final String password;
  final String passwordConfirmation;

  ResetPasswordRequestModel toResetPasswordRequestModel() =>
      ResetPasswordRequestModel(
        userId: userId,
        code: code,
        password: password,
        passwordConfirmation: passwordConfirmation,
      );
}
