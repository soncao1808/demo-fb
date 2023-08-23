import '../../../injection/injector.dart';
import '../../entities/user/login/login_input.dart';
import '../../entities/user/login/login_output.dart';
import '../../repositories/user_repository.dart';
import '../use_case.dart';

class LoginUseCase implements FutureUseCase<LoginInput, LoginOutput> {
  @override
  Future<LoginOutput> run(LoginInput input) =>
      injector.get<UserRepository>().login(input);
}
