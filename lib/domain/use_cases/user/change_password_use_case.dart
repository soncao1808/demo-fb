import 'package:fbapp/domain/entities/user/change_password/change_password_request.dart';
import 'package:fbapp/domain/repositories/user_repository.dart';
import 'package:fbapp/domain/use_cases/use_case.dart';
import 'package:fbapp/injection/injector.dart';

class ChangePasswordUserUseCase
    implements FutureUseCase<ChangePasswordRequest, void> {
  @override
  Future<void> run(ChangePasswordRequest input) =>
      injector.get<UserRepository>().changePassword(input);
}
