import 'package:fbapp/domain/entities/setting/setting_request.dart';
import 'package:fbapp/domain/entities/user/change_password/change_password_request.dart';
import 'package:fbapp/domain/entities/user/info/response/user.dart';
import 'package:fbapp/domain/entities/user/login/login_input.dart';
import 'package:fbapp/domain/entities/user/resend_code/request/resend_code_request.dart';
import 'package:fbapp/domain/entities/user/resend_code/response/resend_code_response.dart';
import 'package:fbapp/domain/entities/user/reset_password/request/reset_password_request.dart';
import 'package:fbapp/domain/entities/user/sign_up/request/sign_up_request.dart';
import 'package:fbapp/domain/entities/user/sign_up/response/sign_up_response.dart';
import 'package:fbapp/domain/entities/user/update_profile_user/update_profile_user_request.dart';
import 'package:fbapp/domain/entities/user/verify_code/request/verify_code_request.dart';
import 'package:fbapp/domain/entities/user/verify_code/response/verify_code_response.dart';

import '../entities/user/forgot/forgot_request.dart';
import '../entities/user/login/login_output.dart';

abstract class UserRepository {
  Future<LoginOutput> login(LoginInput input);

  Future<void> logout();

  Future<ForgotOutput> forgotPassword(ForgotInput input);

  Future<User> getInfoUser();

  Future<SignUpResponse> signUp(SignUpRequest input);

  Future<VerifyCodeResponse> verifyCode(VerifyCodeRequest input);

  Future<ResendCodeResponse> resendCode(ResendCodeRequest input);

  Future<void> updateInfoUser(UpdateProfileUserRequest request);

  Future<void> changePassword(ChangePasswordRequest request);

  Future<void> resetPassword(ResetPasswordRequest input);

  Future<void> setting(SettingRequest id);
}
