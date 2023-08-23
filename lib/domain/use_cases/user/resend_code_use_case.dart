import 'package:fbapp/domain/entities/user/resend_code/request/resend_code_request.dart';
import 'package:fbapp/domain/entities/user/resend_code/response/resend_code_response.dart';
import 'package:fbapp/domain/repositories/user_repository.dart';
import 'package:fbapp/domain/use_cases/use_case.dart';
import 'package:fbapp/injection/injector.dart';

class ResendCodeUseCase
    implements FutureUseCase<ResendCodeRequest, ResendCodeResponse> {
  @override
  Future<ResendCodeResponse> run(ResendCodeRequest input) =>
      injector.get<UserRepository>().resendCode(input);
}
