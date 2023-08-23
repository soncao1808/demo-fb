import 'package:fbapp/domain/entities/user/verify_code/request/verify_code_request.dart';
import 'package:fbapp/domain/entities/user/verify_code/response/verify_code_response.dart';
import 'package:fbapp/domain/repositories/user_repository.dart';
import 'package:fbapp/domain/use_cases/use_case.dart';
import 'package:fbapp/injection/injector.dart';

class VerifyCodeUseCase
    implements FutureUseCase<VerifyCodeRequest, VerifyCodeResponse> {
  @override
  Future<VerifyCodeResponse> run(VerifyCodeRequest input) =>
      injector.get<UserRepository>().verifyCode(input);
}
