import 'package:fbapp/data/models/user/forgot/forgot_input_model.dart';
import 'package:fbapp/data/models/user/forgot/forgot_output_model.dart';
import 'package:fbapp/data/models/user/info/response/user_model.dart';
import 'package:fbapp/data/models/user/login/login_output_model.dart';
import 'package:fbapp/data/models/user/resend_code/response/resend_code_response_model.dart';
import 'package:fbapp/data/models/user/sign_up/response/sign_up_response_model.dart';
import 'package:fbapp/data/models/user/verify_code/response/verify_code_response_model.dart';
import 'package:fbapp/domain/entities/user/change_password/change_password_request.dart';
import 'package:fbapp/domain/entities/user/info/response/user.dart';
import 'package:fbapp/domain/entities/user/resend_code/request/resend_code_request.dart';
import 'package:fbapp/domain/entities/user/resend_code/response/resend_code_response.dart';
import 'package:fbapp/domain/entities/user/reset_password/request/reset_password_request.dart';
import 'package:fbapp/domain/entities/user/sign_up/request/sign_up_request.dart';
import 'package:fbapp/domain/entities/user/sign_up/response/sign_up_response.dart';
import 'package:fbapp/domain/entities/user/update_profile_user/update_profile_user_request.dart';
import 'package:fbapp/domain/entities/user/verify_code/request/verify_code_request.dart';
import 'package:fbapp/domain/entities/user/verify_code/response/verify_code_response.dart';
import '../../domain/entities/user/forgot/forgot_request.dart';
import '../../domain/entities/user/login/login_input.dart';
import '../../domain/entities/user/login/login_output.dart';
import '../../domain/repositories/user_repository.dart';

import '../services/network_services/api_client/api_client.dart';

class UserRepositoryImplement implements UserRepository {
  UserRepositoryImplement(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<LoginOutput> login(LoginInput input) async {
    final LoginOutputModel userResponseModel =
        await _apiClient.login(input.toInputModel());
    return userResponseModel.toEntiteModel();
  }

  @override
  Future<void> logout() async {
    await _apiClient.logout(null);
  }

  @override
  Future<ForgotOutput> forgotPassword(ForgotInput input) async {
    final ForgotInputModel param = input.toForgotInputModel();
    final ForgotOutputModel userResponseModel = await _apiClient.forgot(param);
    return userResponseModel.toEntiteModel();
  }

  @override
  Future<User> getInfoUser() async {
    final UserModel userModel = await _apiClient.getInfoUser();
    return userModel.toModel();
  }

  @override
  Future<SignUpResponse> signUp(SignUpRequest input) async {
    final SignUpResponseModel response =
        await _apiClient.signUp(input.toSignUpRequestModel());
    return response.toSignUpResponse();
  }

  @override
  Future<VerifyCodeResponse> verifyCode(VerifyCodeRequest input) async {
    final VerifyCodeResponseModel response = await _apiClient.verifyCode(
      input.toVerifyCodeRequestParametersModel(),
      input.toVerifyCodeRequestModel(),
    );
    return response.toVerifyCodeResponseModel();
  }

  @override
  Future<ResendCodeResponse> resendCode(ResendCodeRequest input) async {
    final ResendCodeResponseModel response =
        await _apiClient.resendCode(input.toResendCodeRequestModel());
    return response.toResendCodeResponse();
  }

  @override
  Future<void> updateInfoUser(UpdateProfileUserRequest request) async {
    await _apiClient.updateInfoUser(
      request.idUser,
      request.toUpdateProfileUserRequestModel(),
    );
  }

  @override
  Future<void> changePassword(ChangePasswordRequest request) async {
    await _apiClient.changePasswordUser(
      request.idUser,
      request.toChangePasswordRequestModel(),
    );
  }

  @override
  Future<void> resetPassword(ResetPasswordRequest request) async {
    await _apiClient.resetPassword(request.toResetPasswordRequestModel());
  }
}
