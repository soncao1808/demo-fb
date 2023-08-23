import 'package:fbapp/domain/entities/user/update_profile_user/update_profile_user_request.dart';
import 'package:fbapp/domain/repositories/user_repository.dart';
import 'package:fbapp/domain/use_cases/use_case.dart';
import 'package:fbapp/injection/injector.dart';

class UpdateInfoUserUseCase
    implements FutureUseCase<UpdateProfileUserRequest, void> {
  @override
  Future<void> run(UpdateProfileUserRequest input) =>
      injector.get<UserRepository>().updateInfoUser(input);
}
