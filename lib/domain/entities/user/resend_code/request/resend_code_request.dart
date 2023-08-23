import 'package:fbapp/data/models/user/resend_code/request/resend_code_request_model.dart';

class ResendCodeRequest {
  const ResendCodeRequest({
    required this.phoneNumber,
  });

  final String phoneNumber;

  ResendCodeRequestModel toResendCodeRequestModel() => ResendCodeRequestModel(
        phoneNumber: phoneNumber,
      );
}
