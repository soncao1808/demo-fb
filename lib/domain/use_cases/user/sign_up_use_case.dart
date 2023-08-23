import 'package:fbapp/domain/entities/user/sign_up/request/sign_up_request.dart';
import 'package:fbapp/domain/entities/user/sign_up/response/sign_up_response.dart';
import 'package:fbapp/domain/repositories/user_repository.dart';
import 'package:fbapp/domain/use_cases/use_case.dart';
import 'package:fbapp/injection/injector.dart';

class SignUpUseCase implements FutureUseCase<SignUpRequest, SignUpResponse> {
  @override
  Future<SignUpResponse> run(SignUpRequest input) =>
      injector.get<UserRepository>().signUp(input);
}
