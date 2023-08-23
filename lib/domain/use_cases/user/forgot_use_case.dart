import '../../../injection/injector.dart';
import '../../entities/user/forgot/forgot_request.dart';
import '../../repositories/user_repository.dart';
import '../use_case.dart';

class ForgotUseCase implements FutureUseCase<ForgotInput, ForgotOutput> {
  @override
  Future<ForgotOutput> run(ForgotInput input) =>
      injector.get<UserRepository>().forgotPassword(input);
}
