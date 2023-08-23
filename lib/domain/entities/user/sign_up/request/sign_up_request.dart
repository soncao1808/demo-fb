import 'package:fbapp/data/models/user/sign_up/request/sign_up_request_model.dart';

class SignUpRequest {
  const SignUpRequest({
    required this.name,
    required this.phoneNumber,
    required this.password,
    required this.passwordConfirmation,
  });

  final String name;
  final String phoneNumber;
  final String password;
  final String passwordConfirmation;

  SignUpRequestModel toSignUpRequestModel() => SignUpRequestModel(
      name: name,
      phoneNumber: phoneNumber,
      password: password,
      passwordConfirm: passwordConfirmation);
}
