import 'package:fbapp/data/models/user/verify_code/request/verify_code_request_model.dart';

class VerifyCodeRequest {
  const VerifyCodeRequest({
    required this.code,
    required this.phoneNumber,
    required this.type,
  });

  final String code;
  final String phoneNumber;
  final String type;

  VerifyCodeRequestModel toVerifyCodeRequestModel() => VerifyCodeRequestModel(
        code: code,
        phoneNumber: phoneNumber,
      );

  VerifyCodeRequestParametersModel toVerifyCodeRequestParametersModel() =>
      VerifyCodeRequestParametersModel(type: type);
}
