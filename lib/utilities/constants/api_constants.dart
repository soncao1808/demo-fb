import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  ApiConstants._();
  // Base Url
  static final String apiBaseUrl = dotenv.env['BASE_URL'] ?? "";

  // User
  static const String userLogin = '/api/auths';
  static const String infoUser = '/api/profiles';
  static const String userRegister = '/user/register';
  static const String userForgot = '/api/auth/forgot-password';
  static const String userSummary = '/api/user/balance';

  static const String userLogout = '';

  static const String signUp = '';

  static const String verifyCode = '';

  static const String resendCode = '';

  static const String resetPassword = '';

  //Upload image
  static const String uploadImage = '';
  static const String updateInfoUser = '';

  static const List<String> nonAuthenticatedPaths = <String>[
    ApiConstants.userLogin,
  ];
}
