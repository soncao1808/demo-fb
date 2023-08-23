import 'package:fbapp/domain/entities/user/reset_password/request/reset_password_request.dart';
import 'package:fbapp/domain/repositories/user_repository.dart';
import 'package:fbapp/domain/use_cases/use_case.dart';
import 'package:fbapp/injection/injector.dart';

class ResetPasswordUseCase
    implements FutureUseCase<ResetPasswordRequest, void> {
  @override
  Future<void> run(ResetPasswordRequest input) =>
      injector.get<UserRepository>().resetPassword(input);
}
