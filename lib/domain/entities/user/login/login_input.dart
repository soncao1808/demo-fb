import '../../../../data/models/user/login/login_input_model.dart';

class LoginInput {
  const LoginInput({
    required this.phoneNumber,
    required this.password,
  });

  final String phoneNumber;

  final String password;

  LoginInputModel toInputModel() => LoginInputModel(
        phoneNumber: phoneNumber,
        password: password,
      );
}
