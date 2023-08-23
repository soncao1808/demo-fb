import 'package:dio/dio.dart' hide Headers;
import 'package:fbapp/data/models/upload_file/request/upload_file_request_model.dart';
import 'package:fbapp/data/models/upload_file/response/upload_file_response_model.dart';
import 'package:fbapp/data/models/user/change_password/change_password_request_model.dart';
import 'package:fbapp/data/models/user/forgot/forgot_input_model.dart';
import 'package:fbapp/data/models/user/forgot/forgot_output_model.dart';
import 'package:fbapp/data/models/user/info/response/user_model.dart';
import 'package:fbapp/data/models/user/login/login_input_model.dart';
import 'package:fbapp/data/models/user/login/login_output_model.dart';
import 'package:fbapp/data/models/user/resend_code/request/resend_code_request_model.dart';
import 'package:fbapp/data/models/user/resend_code/response/resend_code_response_model.dart';
import 'package:fbapp/data/models/user/reset_password/request/reset_password_request_model.dart';
import 'package:fbapp/data/models/user/sign_up/request/sign_up_request_model.dart';
import 'package:fbapp/data/models/user/sign_up/response/sign_up_response_model.dart';
import 'package:fbapp/data/models/user/update_profile_user/update_profile_user_request_model.dart';
import 'package:fbapp/data/models/user/verify_code/request/verify_code_request_model.dart';
import 'package:fbapp/data/models/user/verify_code/response/verify_code_response_model.dart';
import 'package:fbapp/utilities/constants/api_constants.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST(ApiConstants.userLogin)
  Future<LoginOutputModel> login(
    @Body() LoginInputModel loginRequestModel,
  );

  @DELETE(ApiConstants.userLogout)
  Future<void> logout(
    @Queries() dynamic request,
  );

  @POST(ApiConstants.userForgot)
  Future<ForgotOutputModel> forgot(
    @Body() ForgotInputModel forgotRequestModel,
  );

  @GET(ApiConstants.infoUser)
  Future<UserModel> getInfoUser();

  @POST(ApiConstants.signUp)
  Future<SignUpResponseModel> signUp(
    @Body() SignUpRequestModel signUpRequestModel,
  );

  @POST(ApiConstants.verifyCode)
  Future<VerifyCodeResponseModel> verifyCode(
    @Queries() VerifyCodeRequestParametersModel input,
    @Body() VerifyCodeRequestModel verifyCodeRequestModel,
  );

  @POST(ApiConstants.resendCode)
  Future<ResendCodeResponseModel> resendCode(
      @Body() ResendCodeRequestModel signUpRequestModel);

  @POST(ApiConstants.uploadImage)
  Future<UploadFileResponseModel> getPresignUrl(
    @Body() UploadFileRequestModel uploadImageRequestModel,
  );

  @PUT(ApiConstants.updateInfoUser)
  Future<void> updateInfoUser(
    @Path() int id,
    @Body() UpdateProfileUserRequestModel input,
  );

  @PUT(ApiConstants.updateInfoUser)
  Future<void> changePasswordUser(
    @Path() int id,
    @Body() ChangePasswordRequestModel input,
  );

  @POST(ApiConstants.resetPassword)
  Future<void> resetPassword(
    @Body() ResetPasswordRequestModel resetPasswordRequestModel,
  );
}
